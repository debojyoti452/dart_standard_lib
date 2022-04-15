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

const _ascii = 0x007f;
const _latin1 = 0x00ff;

extension StringExt on String {
  /// Returns a string with prefix added
  /// var value = 'eb'.prefix('D');
  /// print(value); Deb
  String prefix(String prefix) {
    switch (length) {
      case 0:
        return this;
      default:
        return prefix + this;
    }
  }

  /// Returns a string with suffix added
  /// var value = 'De'.suffix('b');
  /// print(value); Deb
  String suffix(String suffix) {
    switch (length) {
      case 0:
        return this;
      default:
        return this + suffix;
    }
  }

  String firstLetterCapitalize() {
    switch (length) {
      case 0:
        return this;
      case 1:
        return toUpperCase();
      default:
        return substring(0, 1).toUpperCase() + substring(1);
    }
  }

  String firstLetterLowercase() {
    switch (length) {
      case 0:
        return this;
      case 1:
        return toLowerCase();
      default:
        return substring(0, 1).toLowerCase() + substring(1);
    }
  }

  /// Returns `true` if this string is empty or consists solely of whitespace
  /// characters.
  bool get isBlank => trimLeft().isEmpty;

  /// Returns `true` if this char sequence is not empty and contains some
  /// characters except of whitespace characters.
  bool get isNotBlank => !isBlank;

  bool get isUpperCase => this == toUpperCase() && this != toLowerCase();

  bool get isLowerCase => this == toLowerCase() && this != toUpperCase();

  /// Returns `true` if the first character is upper case.
  bool get isCapitalized => isNotEmpty && this[0].isUpperCase;

  /// Returns `true` if the first character is lower case.
  bool get isDeCapitalized => isNotEmpty && this[0].isLowerCase;

  /// Returns `true` if the string is ASCII encoded.
  bool get isAscii {
    for (final codeUnit in codeUnits) {
      if (codeUnit > _ascii) return false;
    }
    return true;
  }

  /// Returns `true` if the string is Latin 1 encoded.
  bool get isLatin1 {
    for (final codeUnit in codeUnits) {
      if (codeUnit > _latin1) return false;
    }
    return true;
  }

  /// Returns a new string with characters in reversed order.
  String get reversed {
    final range = chr.Characters(this).iteratorAtEnd;
    final buffer = StringBuffer();
    while (range.moveBack()) {
      buffer.write(range.current);
    }
    return buffer.toString();
  }

  /// Returns `true` if the string can be parsed as an integer.
  bool get isInt => toIntOrNull() != null;

  int toInt({int? radix}) => int.parse(this, radix: radix);

  int? toIntOrNull({int? radix}) => int.tryParse(this, radix: radix);

  /// Returns `true` if the string can be parsed as a `double`.
  bool get isDouble => toDoubleOrNull() != null;

  /// Parses the string as a [double] number and returns the result.
  double toDouble() => double.parse(this);

  double? toDoubleOrNull() => double.tryParse(this);

  String removePrefix(String prefix) {
    if (startsWith(prefix)) {
      return substring(prefix.length, length);
    } else {
      return this;
    }
  }

  String removeSuffix(String suffix) {
    if (endsWith(suffix)) {
      return substring(0, length - suffix.length);
    } else {
      return this;
    }
  }

  String removeSurrounding({required String prefix, required String suffix}) {
    if (startsWith(prefix) && endsWith(suffix)) {
      return substring(prefix.length, length - suffix.length);
    } else {
      return this;
    }
  }

  String slice(int start, [int end = -1]) {
    final _start = start < 0 ? start + length : start;
    final _end = end < 0 ? end + length : end;

    RangeError.checkValidRange(_start, _end, length);

    return substring(_start, _end + 1);
  }

  /// Returns `true` if the string is either `null` or empty.
  bool get isNullOrEmpty => isEmpty;

  /// Returns `true` if the string is neither null nor empty.
  bool get isNotNullOrEmpty => !isNullOrEmpty;
}

extension StringJoin<D extends Iterable> on D {
  String joinToString({
    String? separator,
    String? prefix,
    String? postfix,
    int? limit,
    String? truncated,
    Function(D)? transform,
  }) {
    return Utils.joinStringUtils<D>(
      this,
      separator: separator ?? ', ',
      prefix: prefix ?? '',
      postfix: postfix ?? '',
      limit: limit ?? -1,
      truncated: truncated ?? '...',
      transform: transform,
    ).toString();
  }
}
