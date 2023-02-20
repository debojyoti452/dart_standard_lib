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

mixin Utils {
  static String joinStringUtils<D>(
    D iterator, {
    required String separator,
    required String prefix,
    required String postfix,
    required int limit,
    required String truncated,
    Function(D)? transform,
  }) {
    var count = 0;
    StringBuffer buffer = StringBuffer(prefix);

    for (var element in (iterator as Iterable)) {
      if (++count > 1) buffer.write(separator);

      if (limit < 0 || count <= limit) {
        buffer.write(element);
      } else {
        break;
      }
    }

    if (limit >= 0 && count > limit) buffer.write(truncated);
    buffer.write(postfix);

    return buffer.toString();
  }
}
