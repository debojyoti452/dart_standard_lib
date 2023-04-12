[![Pub Version](https://img.shields.io/pub/v/dart_std?style=for-the-badge)](https://pub.dev/packages/dart_std)
[![GitHub issues](https://img.shields.io/github/issues/debojyoti452/dart_std?style=for-the-badge)](https://github.com/debojyoti452/dart_std/issues)
[![GitHub stars](https://img.shields.io/github/stars/debojyoti452/dart_std?style=for-the-badge)](https://github.com/debojyoti452/dart_std/stargazers)

## Introduction


## Installation

Add the following to your `pubspec.yaml`:

```dart
dependencies:
  dart_std: latest_version
```

After you import the library, you can use the extensions.

```dart
import 'package:dart_std/dart_std.dart';

2.toOrdinal(); // 2nd
```

## Iterable

### .joinToString()

Returns elements as String, can add `prefix` or `suffix`, `separator`. Similar to Kotlin [joinToString()](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.collections/join-to-string.html)

```dart
final list = [0, 1, 2, 3, 4, 5];
list.joinToString(
    String? separator,
    String? prefix,
    String? postfix,
    int? limit,
    String? truncated,
    Function(D)? transform,
);
```

### .toFlatten()

Combine nested collections to single collections.

```dart
final nestedList = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
final flatList = nestedList.toFlatten(); // [1, 2, 3, 4, 5, 6, 7, 8, 9]
```
## Number types (int, double, etc)

### toLikes()

Return `K to B`, now no need to convert `likes` or `number` manually.

```dart
10000.toLikes() // 10K
98000.toLikes() // 9.8K
``` 

### .toOrdinal()

Returns an `ordinal number` of `String` type for any integer

```dart
2.ordinal();  // 2nd
452.ordinal();  // 452th
```

### .plus() or plusOrNull()

Returns `addition` of two number

```dart
2.plus(8);  // 10
10.plusOrNull(20);  // 30
```

### .minus() or minusOrNull()

Returns `substraction` of two number

```dart
8.minus(2);  // 6
20.minusOrNull(10);  // 10
```

### .multiply() or multiplyOrNull()

Returns `multiplication` of two number

```dart
8.multiply(2);  // 16
20.multiplyOrNull(10);  // 200
```

### .divide()

Returns `division` of two number

```dart
8.divide(2);  // 4
20.divide(2.5) // 8
```

## String

### .firstLetterCapitalize()

Returns a copy of the string having its first letter uppercased, or the original string, if it's empty or already starts with an upper case letter.

```dart
'deb'.firstLetterCapitalize(); // Deb
'Deb'.firstLetterCapitalize(); // Deb
```

### .firstLetterLowercase()

Returns a copy of the string having its first letter lowercased, or the original string, if it's empty or already starts with a lower case letter.

```dart
'deb'.firstLetterLowercase(); // deb
'Deb'.firstLetterLowercase(); // deb
```

### .prefix()
Returns a string with prefix added
```dart
var value = 'eb'.prefix('D'); 
print(value); // Deb
```
### .suffix()
Returns a string with suffix added
```dart
var value = 'De'.suffix('b');
print(value); // Deb
```
### .removePrefix(), .removeSuffix() and .removeSurrounding()

Remove a prefix, a suffix, or both from a given string:

```dart
final name = 'James Bond'.removePrefix('James '); // Bond
final milliseconds = '100ms'.removeSuffix('ms'); // 100
final text = '<p>Some HTML</p>'
  .removeSurrounding(prefix: '<p>', suffix: '</p>'); // Some HTML
```

### .reversed

Returns a new string with characters in reversed order.

```dart
final emptyString = ''.reversed; // ''
final reversed = 'abc🤔'.reversed; // '🤔cba'
```
## License

```plain
MIT License

Copyright (c) 2022 Debojyoti Singha

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
