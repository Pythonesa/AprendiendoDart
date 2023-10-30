void main(List<String> args) {
  print(saludar("Pepe"));
  print(saludar("Kaly"));
  saludar2();
  saludar3();
  saludar3("Kaly");
  saludar4(null);
  saludar5(name: 'Kaly');

  //Lambda power:
  List<int> listado = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  Iterable<int> nuevoListadoBasico = listado.where((number) {
    return number % 2 == 0;
  });
  print(nuevoListadoBasico);

  Iterable<int> nuevoListadoLambda = listado.where((number) => number % 2 == 0);
  print(nuevoListadoLambda);
}

//argumentos obligatorios posicionales:
String saludar(String name) {
  return 'Hola $name!'; //si no hay return explícito devuelve null (si no se pone void)
}

//LAMBDAS:
//con {} los argumentos se vuelven opcionales:
void saludar2({name}) => print('Hola $name!');

//argumentos por defecto con []:
void saludar3([name = 'Pepe']) => print('Hola $name!');

//argumentos que pueden ser null, obligatorios:
void saludar4(String? name) => print('Hola $name!');

//argumentos obligatorios por nombre:
void saludar5({required String name}) => print('Hola $name!');
