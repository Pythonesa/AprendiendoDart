void main() {
  var a = 10;
  final int b = 10;
  const double c = 10;

  a = 20;
  // Las variables finales y constantes no se pueden reasignar
  // b = 20;
  // c = 20;

  print(a);
  print(b);
  print(c);

  final List<String> personasFinal = ['Juan', 'Pedro', 'Maria'];
  const List<String> personasConst = ['Juan', 'Pedro', 'Maria'];
  List<String> personasConst2 = const ['Juan', 'Pedro', 'Maria'];

  print(personasFinal);
  print(personasConst);
  print(personasConst2);

  personasFinal.add('Ana'); // Se pueden agregar elementos, pero no se puede reasignar:
  //personasFinal = ['Juan', 'Pedro', 'Maria', 'Ana']; //Error: Cannot assign to the final variable
  print(personasFinal);

  // personasConst.add('Ana'); // Error: Cannot add to an unmodifiable list
  // print(personasConst);
}
