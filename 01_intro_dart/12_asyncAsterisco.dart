void main() {
  emitNumber().listen((int value) {
    print("Número emitido: $value");
  });
}

Stream<int> emitNumber() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];
  for (final int value in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield value;
  }
}
