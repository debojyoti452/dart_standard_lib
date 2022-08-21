abstract class DynamicNumber implements Comparable<DynamicNumber> {
  DynamicNumber(this.value);

  final num value;

  @override
  String toString() => '$value';

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DynamicNumber) return false;
    return value == other.value;
  }
}
