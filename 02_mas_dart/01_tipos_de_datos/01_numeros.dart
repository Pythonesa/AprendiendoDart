void main() {
  var a = 10;
  dynamic b = 10;
  int c = 10;
  double d = 10.5;
  int? e; // null
  late int f; // no inicializado
  f = 10;
  print(a);
  print(b);
  print(c);
  print(d);
  print(e);
  print(f);
  print(a + d); // 20.5 double
}
