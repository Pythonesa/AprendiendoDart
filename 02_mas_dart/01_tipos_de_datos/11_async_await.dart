import 'dart:io';

void main(List<String> args) async {
  //para poder usar await en el cuerpo la función debe ser asincrona
  String path = Directory.current.path +
      '\\02_mas_dart\\01_tipos_de_datos\\assets\\personas.txt';
  String texto = await leerArchivo(path);
  print(texto);

  print('Fin del main');
}

Future<String> leerArchivo(String path) async {
  //el async es opcional, fuerza a que la función devuelva un Future
  File file = new File(path);
  return file.readAsString();
}
