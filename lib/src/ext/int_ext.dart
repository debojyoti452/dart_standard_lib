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
