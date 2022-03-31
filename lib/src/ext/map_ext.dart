extension MapIndexEx<D> on Iterable<D> {
  Iterable<T> mapIndexed<T>(T Function(D e, int i) f) {
    var i = 1;
    return map((e) => f(e, i++));
  }

  void forEachIndexed(void Function(D e, int i) f) {
    var i = 0;
    forEach((e) => f(e, i++));
  }
}
