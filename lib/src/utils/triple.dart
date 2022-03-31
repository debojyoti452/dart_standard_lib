part of dart_std;

class Triple<A, B, C> {
  const Triple(this._first, this._second, this._third);

  final A _first;
  final B _second;
  final C _third;

  A get first => _first;

  B get second => _second;

  C get third => _third;

  @override
  String toString() => '($_first, $_second, $_third)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Triple &&
          runtimeType == other.runtimeType &&
          _first == other.first &&
          _second == other.second &&
          _third == other.third;

  @override
  int get hashCode => _first.hashCode ^ _second.hashCode ^ _third.hashCode;
}
