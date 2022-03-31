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
