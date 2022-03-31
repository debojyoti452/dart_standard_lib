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
}
