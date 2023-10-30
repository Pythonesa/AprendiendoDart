import 'dart:io';

void main() {
  stdout.write('Ingresa tu edad: ');
  int age = int.parse(stdin.readLineSync()!);
  if (age < 18) {
    print('Eres menor de edad');
  } else if (age < 21) {
    print('Eres mayor de edad');
  } else {
    print('Eres ciudadano');
  }
}
