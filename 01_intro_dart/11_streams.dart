void main() {
  emitNumbers().listen( (value) {
    print('Número emitido: $value');
  });
}

emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}
