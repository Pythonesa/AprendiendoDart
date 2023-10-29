void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('Listado original: $numbers');
  print('Cantidad elementos: ${ numbers.length }');
  print('Primer valor: ${ numbers.first }');

  final reversedNumbers = numbers.reversed;
  print('Iterable de la lista invertida: $reversedNumbers');
  print('Lista invertida: ${ reversedNumbers.toList() }');
  print('Set de la lista invertida: ${ reversedNumbers.toSet() }');

  final doubledNumbers = numbers.map((number) => number * 2);
  print('Lista * 2: $doubledNumbers');

  final numbersGreaterThan5 = numbers.where((number) => number > 5);
  print('Números mayores a 5: $numbersGreaterThan5');

  final sum = numbers.reduce((value, element) => value + element);
  print('Suma de todos los números: $sum');
}
