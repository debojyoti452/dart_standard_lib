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
