import 'clases/MiServicio.dart';

void main(List<String> args) {
  final oneService = new MiServicio();
  final otherService = new MiServicio();

  print(oneService == otherService); //ambas apuntan a la misma instancia

  oneService.url = 'https://www.google.com/';
  otherService.url = 'https://www.youtube.com/';

  print(oneService.url);
  print(otherService.url);
}