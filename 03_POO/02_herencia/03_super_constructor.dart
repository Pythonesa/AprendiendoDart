void main(List<String> args) {
  final yo = new Persona('María', 36);
  yo.imprimirNombre();
  final cliente = new Cliente('Pepe', 20, 'Calle Falsa 123');
  cliente.imprimirNombre();
}

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Mi nombre es $nombre.');
}

class Cliente extends Persona {
  String direccion;
  List ordenes = [];

  Cliente(String nombre, int edad, this.direccion) : super(nombre, edad);

  @override
  void imprimirNombre() {
    super.imprimirNombre();
    print('Mi dirección es $direccion.');
  }
}
