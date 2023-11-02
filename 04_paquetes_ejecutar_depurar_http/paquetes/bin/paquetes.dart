//import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:paquetes/clases/reqres_respuesta.dart';

void main(List<String> arguments) {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    print('Status code: ${res.statusCode}');
    //print('Headers: ${res.headers}');
    // final body = jsonDecode(res.body);
    // print(body);
    // print('page: ${body['page']}');
    // print('per_page: ${body['per_page']}');
    // print('id del tercer elemento: ${body['data'][2]['id']}');
    final respuesta = respuestaFromJson(res.body);
    print('page: ${respuesta.page}');
    print('per_page: ${respuesta.perPage}');
    print('id del tercer elemento: ${respuesta.data[2].id}');
    for (var element in respuesta.data) {
      print('${element.firstName} ${element.lastName}');
    }
  });
}
