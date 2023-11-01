void main(List<String> args) {
  // final logger = new Logger();
  // logger.imprimir('hola!');
  final asteroide = new Asteroide('Ceres');
  asteroide.existe();
}

mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

abstract class Astro with Logger {
  String nombre;

  Astro(this.nombre) {
    imprimir('-- Init del Astro $nombre --');
  }

  void existe() {
    imprimir('-- Soy un ser celestial y existo --');
  }
}

class Asteroide extends Astro {
  Asteroide(String nombre) : super(nombre);
}
