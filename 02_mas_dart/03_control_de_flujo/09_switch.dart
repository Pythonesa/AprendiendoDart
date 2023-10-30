import 'dart:math';

void main(List<String> args) {
  int day = Random().nextInt(7);
  print(day);
  switch (day) {
    case 0:
      print('Lunes');
      break;
    case 1:
      print('Martes');
      break;
    case 2:
      print('Miercoles');
      break;
    case 3:
      print('Jueves');
      break;
    case 4:
      print('Viernes');
      break;
    default:
      print('¡Fin de semana!');
      print(day == 5 ? 'Sábado' : 'Domingo');
      break;
  }
}
