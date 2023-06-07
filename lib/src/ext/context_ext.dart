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

extension ContextExt on BuildContext {
  /// Navigate to a new screen
  void navigateTo(Widget screen) {
    Navigator.of(this).push(
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  /// Navigate to a new screen and remove all previous screens
  void navigateToAndRemoveAll(Widget screen) {
    Navigator.of(this).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => screen),
      (route) => false,
    );
  }

  /// Navigate to a new screen with a named route
  void navigateToNamed(String routeName) {
    Navigator.of(this).pushNamed(routeName);
  }

  /// Navigate to a new screen with a named route and remove all previous screens
  void navigateToNamedAndRemoveAll(String routeName) {
    Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
    );
  }

  /// Navigate pop
  void navigatePop() {
    Navigator.of(this).pop();
  }

  /// Navigate pop with a value
  void navigatePopWithValue<T>(T value) {
    Navigator.of(this).pop(value);
  }

  /// Navigate pop until a route
  void navigatePopUntil(String routeName) {
    Navigator.of(this).popUntil(ModalRoute.withName(routeName));
  }

  /// Navigate pop until a route with a value
  void navigatePopUntilWithValue<T>(String routeName, T value) {
    Navigator.of(this).popUntil(
      ModalRoute.withName(routeName),
    );
    Navigator.of(this).pop(value);
  }
}
