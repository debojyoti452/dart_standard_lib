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

import 'package:dart_std/dart_std.dart';

mixin Utils {
  static String joinStringUtils<T>(
    String text, {
    String? separator,
    String? prefix,
    String? postfix,
    int? limit = -1,
    String? truncated,
    Function(T)? transform,
  }) {
    text = text.removeSurrounding(prefix: '[', suffix: ']');
    var result = text;

    if (separator != null && separator.isNotEmpty) {
      result.split(separator);
    }

    if (prefix != null && prefix.isNotEmpty) {
      result = text.prefix(prefix);
    }

    if (postfix != null && postfix.isNotEmpty) {
      result = text.suffix(postfix);
    }

    return result;
  }
}
