import 'dart:io';

void main() {
  //Esto me da un error:
  stdout.write('¿Cuál es tu nombre? ');
  String? name = stdin.readLineSync();
  print('¡Hola $name!');
  
}