void main(List<String> args) {
  Rectangle cuadrado = Rectangle(5, 5);
  Rectangle rectangulo = Rectangle.rectangle(7, 4);

  print(cuadrado);
  print(rectangulo);
}

class Rectangle {
  late double width;
  late double height;
  late double area;
  late String type;

  Rectangle.cuadrado(double base) {
    this.width = base;
    this.height = base;
    this.area = base * base;
    this.type = 'cuadrado';
  }

  Rectangle.rectangle(double width, double height) {
    this.width = width;
    this.height = height;
    this.area = width * height;
    this.type = 'rectángulo';
  }

  factory Rectangle(double width, double height) {
    if (width == height) {
      return Rectangle.cuadrado(width);
    } else {
      return Rectangle.rectangle(width, height);
    }
  }

  @override
  String toString() => 'Lado: $width, Altura: $height, Área: $area, Tipo: $type';
}
