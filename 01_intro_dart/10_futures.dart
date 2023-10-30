void main() async {
  print("Inicio del programa");

  // httpGet("https://google.com")
  //     .then((value) => print(value))
  //     .catchError((error) => print(error));

  try {
    final value = await httpGet("https://google.com");
    print(value);
  } on Exception catch(err){
    print('Ups... algo salió mal: $err');
  } catch (error) {
    print(error);
  } finally {
    print('Fin del try-catch');
  }
  

  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('Error en la petición http');
  //return "Respuesta de la petición http";
  //return Future.delayed(const Duration(seconds: 1), () => 'Respuesta de la petición http');
}

