void main(List<String> args) {
  final mySquare = Square(side: -10);

  mySquare.side = 5;

  print('Lado: ${ mySquare._side }');

  print('Area: ${ mySquare.area }');

}

class Square {
  double _side;

  Square({required double side}) 
  : assert(side >= 0, 'el lado debe ser positivo'),
   _side = side;

  double get area => calculateArea();
  set side(double value){
    print('Estableciendo el valor de la variable _side');
    if (value < 0) throw 'El valor no puede ser negativo';
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}