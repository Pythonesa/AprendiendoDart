void main() {
  int a = 10 + 5;
  int b = 10 - 5;
  int c = 10 * 5;
  double d = 10 / 3;
  int e = 10 ~/ 3; // floor division
  int f = 10 % 3;
  int g = -a; // unary negation

  print(a);
  print(b);
  print(c);
  print(d);
  print(e);
  print(f);
  print(g);
  g++;
  print(g);
  g--;
  print(g);
  g += 5;
  print(g);
  g -= 5;
  print(g);
  g *= 5;
  print(g);
  g %= 5;
  print(g);
  d /= 5;
  print(d);

  int? x;
  print(x);
  x ??= 5;
  print(x);
}
