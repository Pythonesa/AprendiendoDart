import 'dart:io';

void main(List<String> args) {
  String next = 'y';
  int count = 0;

  while (next == 'y' || next == 'Y') {
    count++;
    print('Iteración $count');
    stdout.write('¿Deseas continuar (y/n)? ');
    next = stdin.readLineSync()!;
  }
}