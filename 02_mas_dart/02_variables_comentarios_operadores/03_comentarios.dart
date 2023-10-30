/**
 * [author]: Pythonesa
 * [version]: 1.0
 * [description]: Este archivo sirve para probar los comentarios
 * [date]: 2023-10-30
 * [license]: MIT
 * [copyright]: Copyright (c) 2023 - Pythonesa
 */

void main() {
  // Comentario de una sola línea
  int a = 10; // Comentario in-line
  print(a);

  /*
    Comentario
    de
    múltiples
    líneas
  */

  /* Código comentado en múltiples líneas
  final personas = [
    //Primera persona
    'Juan', //[0]
    //Segunda persona
    'Pedro', //[1]
    //Tercera persona
    'Maria' //[2]
  ];
  */
}

//Este tipo de comentarios no sirven para, por ejemplo, dartdoc:
//Nombre: El nombre de la persona que queiro saludar
//Saludo: El saludo que le quiero dar

//Esto tampoco está bien:
///Funciona para saludar
///@param nombre El nombre de la persona que se quiere saludar
///@param saludo El saludo que se desea dar
///

//Se puede usar markdown:
/// ```html
/// <h1>HTML is magical!</h1>
/// ```

//Esto sería lo correcto:
/// **Funciona para saludar**
///
///Recibe un *[nombre]* y se concatena con el *[saludo]*
saludar(String nombre, String saludo) {
  print('$saludo $nombre');
}
