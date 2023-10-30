void main() {
  int a = 5;
  String resp = a > 10 ? 'Mayor a 10' : 'Menor a 10'; // Operador ternario
  print(resp);

  int? b;
  int c = b ?? 10;
  print(b);
  print(c);

  String persona1 = 'Juan';
  String persona2 = 'Pedro';
  print(persona1 == persona2);
  print(persona1 != persona2);

  int x = 20;
  int y = 30;
  print(x > y); // false
  print(x < y); // true
  print(x >= y); // false
  print(x <= y); // true

  //Operador de tipo:
  //print(x is int); // true
  print(x is String); // false
  print(x is! String); // true

}
