void main() {
  var name = 'Pepe';
  String name2 = 'Kaly';
  String? name3;
  String name4 = "Kaly";
  String name5 = "O'Connor";
  String name6 = 'O\'Connor';

  String multilinea = '''
  Hola
  $name2!''';

  String saludo = 'Hola $name2!';

  print(name);
  print(name2);
  print(name3);
  print(name2 == name4);
  print(name5);
  print(name6);
  print(name5 == name6);
  print(multilinea);
  print(saludo);
}
