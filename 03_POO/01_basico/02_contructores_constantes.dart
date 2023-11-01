void main(List<String> args) {
  const persona1 = Persona('Juan', 'Perez');
  const persona2 = Persona('Juan', 'Perez');
  const persona3 = Persona('Kaly', 'Crazy');
  print(persona1 == persona2); //true
  print(persona1 == persona3); //false
}

class Persona {
  final String nombre;
  final String apellido;

  //al ser constante si los objetos tienen los mismos valores van a ser iguales
  const Persona(this.nombre, this.apellido);
}
