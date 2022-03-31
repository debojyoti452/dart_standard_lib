part of dart_std;

class Pair<A, B> {
  const Pair(this._first, this._second);

  final A _first;
  final B _second;

  A get first => _first;

  B get second => _second;

  @override
  String toString() => '($_first, $_second)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pair &&
          runtimeType == other.runtimeType &&
          _first == other.first &&
          _second == other.second;

  @override
  int get hashCode => _first.hashCode ^ _first.hashCode;
}
