import 'dart:io';

void main() {
  printLine('=========== Usuario 1 =============');

  final Map<String, dynamic> usuario = getUserData();

  printLine('Usuario 1 sin deducciones');
  printLine(usuario);

  double salario = 1500;
  addUserData(usuario, salario);

  printLine(usuario);

  printLine('=========== Usuario 2 =============');

  final Map<String, dynamic> usuario2 = getUserData();

  printLine('Usuario 2 sin deducciones');
  printLine(usuario2);

  double salario2 = 1800;
  addUserData(usuario2, salario2);

  printLine(usuario2);
}

void printLine(dynamic text) => stdout.writeln(text);

String readLine() => stdin.readLineSync() ?? '';

Map<String, dynamic> getUserData() {
  printLine('¿Cúal es su nombre?');
  String name = readLine();

  printLine('¿Qué edad tienes?');
  String age = readLine();

  printLine('¿En qué país naciste?');
  String country = readLine();

  return {'nombre': name, 'edad': age, 'pais': country};
}

void addUserData(Map<String, dynamic> user, double salario) {
  user['salario'] = salario;
  user['deducciones'] = salario * 0.15;
  user['salarioNeto'] = salario - (salario * 0.15);
}
