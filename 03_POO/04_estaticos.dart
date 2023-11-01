void main(List<String> args) {
  print(Tools.tools);
  Tools.listarHerramientas();
}

class Tools {
  //const para que no se pueda modificar
  static const List<String> tools = [
    'Martillo',
    'Llave inglesa',
    'Destornillador',
    'Taladro'
  ];

  // static listarHerramientas() {
  //   for (String tool in tools) {
  //     print(tool);
  //   }
  // }
  static void listarHerramientas() => tools.forEach(print);
}
