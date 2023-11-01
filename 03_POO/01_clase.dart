import 'clases/Persona.dart';

void main(List<String> args) {
  //final persona = Persona();
  // persona.nombre = 'Kaly';
  // persona.edad = 2;
  // persona.bio = 'Nació por ahí.';
  //persona ..nombre = 'Kaly' ..edad = 2 ..bio = 'Nació por ahí.';
  final persona = Persona('Kaly', 2, 'Nació por ahí.');
  final persona2 = Persona('María', 36);
  final persona3 = Persona.persona30('Pepe', 'Nació en algún lado.');

  print(persona.toString());
  print(persona2.toString());
  print(persona3.toString());
  // int nuevaEdad = persona.cumplirAnios();
  // print(nuevaEdad);
  persona.cumplirAnios(); //no tenemos porque asignar lo que recibimos del método
  print(persona);
}
