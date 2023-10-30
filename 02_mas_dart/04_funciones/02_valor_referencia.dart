void main(List<String> args) {
  //Argumentos por valor
  //El valor de la variable no se modifica en los tipos de datos primitivos
  String name = "Kaly";
  String name2 = capitalize(name);
  print(name);
  print(name2);

  //Argumentos por referencia
  //El valor de la variable se modifica en los tipos de datos no primitivos
  Map<String, String> map = {'name': 'Kaly', 'last_name': 'Crazy'};
  print(map);
  String name3 = capitalizeMap(map);
  print(name3);
  print(map);

  Map<String, String> map2 = {'name': capitalizeMap(map), 'last_name': 'Crazy'};
  print(map2);
}

String capitalize(String text) {
  return text.toUpperCase();
}

String capitalizeMap(Map<String, String> map) {
  //Se puede romper la referencia:
  map = {...map};
  map['name'] = map['name']!.toUpperCase();
  return map['name']!;
}
