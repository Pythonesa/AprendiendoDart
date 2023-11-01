void main(List<String> args) {
  final ford = new Auto();

  ford.encender();
  ford.revisarMotor();
  ford.apagar();
}

abstract class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('Vehículo encendido');
  }

  void apagar() {
    encendido = false;
    print('Vehículo apagado');
  }

  bool revisarMotor();
}

class Auto extends Vehiculo {
  int kilometraje = 0;

  @override
  bool revisarMotor() {
    print('Motor OK!');
    return encendido;
  }
}
