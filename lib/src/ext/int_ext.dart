/*
 *
 *  * *******************************************************************************************
 *  *  * Created By Debojyoti Singha
 *  *  * Copyright (c) 2022.
 *  *  * Licensed under the Apache License, Version 2.0 (the "License");
 *  *  * you may not use this file except in compliance with the License.
 *  *  * You may obtain a copy of the License at
 *  *  * http://www.apache.org/licenses/LICENSE-2.0
 *  *  * Unless required by applicable law or agreed to in writing, software
 *  *  * distributed under the License is distributed on an "AS IS" BASIS,
 *  *  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  *  * See the License for the specific language governing permissions and
 *  *  * limitations under the License.
 *  *  * Contact Email: swingtechnologies452@gmail.com
 *  * ******************************************************************************************
 *
 */

part of dart_std;

extension IntExt on num? {
  bool isNull() {
    if (this == null) {
      return false;
    }
    return true;
  }

  String toLikes() {
    var num = this ?? 0;
    if (num > 999 && num < 99999) {
      return "${(num / 1000).toStringAsFixed(1)}K";
    } else if (num > 99999 && num < 999999) {
      return "${(num / 1000).toStringAsFixed(0)}K";
    } else if (num > 999999 && num < 999999999) {
      return "${(num / 1000000).toStringAsFixed(1)}M";
    } else if (num > 999999999) {
      return "${(num / 1000000000).toStringAsFixed(1)}B";
    } else {
      return num.toString();
    }
  }

  /// returns if the number is is even or not
  bool get isEven => ((this ?? 0) % 2 == 0) ? true : false;
}

extension OrdinalInt<T extends int> on T {
  String toOrdinal() {
    final firstPlace = this % 10;
    final tenthPlace = ((this / 10).floor()) % 10;
    if (tenthPlace == 1) {
      return '${this}th';
    } else {
      switch (firstPlace) {
        case 1:
          return '${this}st';
        case 2:
          return '${this}nd';
        case 3:
          return '${this}rd';
        default:
          return '${this}th';
      }
    }
  }
}

extension NumArith<T extends num> on T {
  /// Divide val if if it not null else returns `this`
  double divide(dynamic val) {
    if (val == null) return toDouble();
    return toDouble() / val;
  }

  /// Multiply val if if it not null else returns `this`
  T? multiply(T? val) => val == null ? this : this * val as T?;

  /// returns null if val is null else returns `this` * val
  T? multiplyOrNull(T? val) => val == null ? null : this * val as T?;

  /// Minus val if if it not null else returns `this`
  T? minus(T? val) => val == null ? this : this - val as T?;

  /// returns null if val is null else returns `this` - val
  T? minusOrNull(T? val) => val == null ? null : this - val as T?;

  /// Adds val if if it not null else returns `this`
  T? plus(T? val) => val == null ? this : this + val as T?;

  /// returns null if val is null else returns `this` + val
  T? plusOrNull(T? val) => val == null ? null : this + val as T?;
}
