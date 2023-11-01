import 'dart:io';

void main(List<String> args) {
  File file = new File(Directory.current.path + '\\02_mas_dart\\01_tipos_de_datos\\assets\\personas.txt');
  Future<String> f = file.readAsString();
  f.then(print);

  print('Fin del main');
  
}
