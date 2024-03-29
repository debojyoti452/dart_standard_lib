/*
 * *
 *  * * GNU General Public License v3.0
 *  * *******************************************************************************************
 *  *  *  Created By Debojyoti Singha
 *  *  *  Copyright (c) 2023.
 *  *  * This program is free software: you can redistribute it and/or modify
 *  *  * it under the terms of the GNU General Public License as published by
 *  *  * the Free Software Foundation, either version 3 of the License, or
 *  *  * (at your option) any later version.
 *  *  *
 *  *  * This program is distributed in the hope that it will be useful,
 *  *  *
 *  *  * but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  *  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  *  * GNU General Public License for more details.
 *  *  *
 *  *  * You should have received a copy of the GNU General Public License
 *  *  * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *  *  * Contact Email: support@swingtechnologies.in
 *  * ******************************************************************************************
 *
 */
part of '../../dart_std.dart';

extension MapIndexEx<D> on Iterable<D> {
  Iterable<T> mapIndexed<T>(T Function(D e, int i) f) {
    var i = 1;
    return map((e) => f(e, i++));
  }

  void forEachIndexed(void Function(D e, int i) f) {
    var i = 0;
    forEach((e) => f(e, i++));
  }
}

extension MapEx<D, S> on Map<D, S>? {
  /// Check is [Map] Empty or Null, Will default returns an empty [Map].
  Map<D, S> isMapEmpty() => this ?? <D, S>{};

  /// Returns the number of entries matching the given [predicate] or the number
  /// of entries when `predicate = null`.
  int getCount([bool Function(MapEntry<D, S>)? predicate]) {
    if (predicate == null) {
      return isMapEmpty().length;
    }
    var count = 0;

    final i = isMapEmpty().entries.iterator;
    while (i.moveNext()) {
      if (predicate(i.current)) {
        count++;
      }
    }
    return count;
  }

  /// Returns true if there is at least one entry that matches the given [predicate].
  /// [predicate] must not be null.
  bool any(bool Function(D key, S value) predicate) {
    if (isMapEmpty().isEmpty) {
      return false;
    }
    for (final MapEntry<D, S> entry in isMapEmpty().entries) {
      if (predicate(entry.key, entry.value)) {
        return true;
      }
    }
    return false;
  }

  /// Returns a new map containing all key-value pairs matching the given [predicate].
  /// The returned map preserves the entry iteration order of the original map.
  Map<D, S> filter(bool Function(MapEntry<D, S> entry) predicate) {
    final result = <D, S>{};
    for (final entry in isMapEmpty().entries) {
      if (predicate(entry)) {
        result[entry.key] = entry.value;
      }
    }
    return result;
  }

  /// Returns `true` if there is no entries in the map that match the given [predicate].
  /// [predicate] must not be null.
  bool predicate(bool Function(D key, S value) predicate) {
    if (isMapEmpty().isEmpty) {
      return true;
    }
    for (final MapEntry<D, S> entry in isMapEmpty().entries) {
      if (predicate(entry.key, entry.value)) {
        return false;
      }
    }
    return true;
  }

  /// Returns the first entry yielding the largest value of the given
  /// function or `null` if there are no entries.
  MapEntry<D, S>? maxBy<R extends Comparable>(
    R Function(MapEntry<D, S>) selector,
  ) {
    final i = isMapEmpty().entries.iterator;
    if (!i.moveNext()) return null;
    MapEntry<D, S> maxElement = i.current;
    R maxValue = selector(maxElement);
    while (i.moveNext()) {
      final e = i.current;
      final v = selector(e);
      if (maxValue.compareTo(v) < 0) {
        maxElement = e;
        maxValue = v;
      }
    }
    return maxElement;
  }

  /// Returns the first entry having the largest value according
  /// to the provided [comparator] or `null` if there are no entries.
  MapEntry<D, S>? maxWith(Comparator<MapEntry<D, S>> comparator) {
    final i = isMapEmpty().entries.iterator;
    if (!i.moveNext()) return null;
    var max = i.current;
    while (i.moveNext()) {
      final e = i.current;
      if (comparator(max, e) < 0) {
        max = e;
      }
    }
    return max;
  }

  /// Returns the first entry having the smallest value according to the provided
  /// [comparator] or `null` if there are no entries.
  MapEntry<D, S>? minWith(Comparator<MapEntry<D, S>> comparator) {
    final i = isMapEmpty().entries.iterator;
    if (!i.moveNext()) return null;
    var min = i.current;
    while (i.moveNext()) {
      final e = i.current;
      if (comparator(min, e) > 0) {
        min = e;
      }
    }
    return min;
  }

  /// Returns the first entry yielding the smallest value
  /// of the given function or `null` if there are no entries.
  MapEntry<D, S>? minBy<R extends Comparable>(
    R Function(MapEntry<D, S>) selector,
  ) {
    final i = isMapEmpty().entries.iterator;
    if (!i.moveNext()) return null;
    MapEntry<D, S> minElement = i.current;
    R minValue = selector(minElement);
    while (i.moveNext()) {
      final e = i.current;
      final v = selector(e);
      if (minValue.compareTo(v) > 0) {
        minElement = e;
        minValue = v;
      }
    }
    return minElement;
  }
}
