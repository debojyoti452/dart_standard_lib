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

part of dart_std;

extension ListExt<D> on List<D> {
  int get lastIndex => length - 1;

  int get firstIndex => isNotEmpty ? 0 : -1;

  D? elementAtOrNull(int index) {
    if (index < 0) return null;
    if (index >= length) return null;
    return this[index];
  }

  Iterable<int> get indices sync* {
    var index = 0;
    while (index <= lastIndex) {
      yield index++;
    }
  }

  List<D> drop(int n) {
    if (n < 0) {
      throw ArgumentError('Requested element count $n is less than zero.');
    }
    if (n == 0) toList();

    final resultSize = length - n;
    if (resultSize <= 0) return [];
    if (resultSize == 1) return [last!];
    return sublist(n);
  }

  List<D> dropWhile(bool Function(D element) predicate) {
    int? startIndex;
    for (var i = 0; i < length; i++) {
      if (!predicate(this[i])) {
        startIndex = i;
        break;
      }
    }
    if (startIndex == null) return [];
    return sublist(startIndex);
  }

  List<D> dropLast(int n) {
    if (n < 0) {
      throw ArgumentError('Requested element count $n is less than zero.');
    }
    if (n == 0) toList();

    final resultSize = length - n;
    if (resultSize <= 0) return [];
    if (resultSize == 1) return [first];
    return sublist(0, length - n);
  }

  List<D> dropLastWhile(bool Function(D element) predicate) {
    int? endIndex;
    for (var i = lastIndex; i >= 0; i--) {
      if (!predicate(this[i])) {
        endIndex = i;
        break;
      }
    }
    if (endIndex == null) return [];
    return sublist(0, endIndex + 1);
  }

  int lowerBound(D value, {int Function(D a, D b)? compare}) {
    return std.lowerBound(this, value, compare: compare);
  }

  int binarySearch(D value, {int Function(D a, D b)? compare}) {
    return std.binarySearch(this, value, compare: compare);
  }

  void insertionSort({Comparator<D>? comparator, int start = 0, int? end}) {
    std.insertionSort(this, compare: comparator, start: start, end: end);
  }

  void mergeSort({int start = 0, int? end, Comparator<D>? comparator}) {
    std.mergeSort(this, start: start, end: end, compare: comparator);
  }

  void swap(int indexA, int indexB) {
    final temp = this[indexA];
    this[indexA] = this[indexB];
    this[indexB] = temp;
  }
}

extension ListFlattenExtension<D> on List<List<D>> {
  List<D> toFlatten() => [for (final list in this) ...list];
}
