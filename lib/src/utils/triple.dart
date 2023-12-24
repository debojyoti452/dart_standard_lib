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

class Triple<A, B, C> {
  const Triple(this._first, this._second, this._third);

  final A _first;
  final B _second;
  final C _third;

  A get first => _first;

  B get second => _second;

  C get third => _third;

  @override
  String toString() => '($_first, $_second, $_third)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Triple &&
          runtimeType == other.runtimeType &&
          _first == other.first &&
          _second == other.second &&
          _third == other.third;

  @override
  int get hashCode => _first.hashCode ^ _second.hashCode ^ _third.hashCode;
}
