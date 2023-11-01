class Persona {
  //Propiedades
  final String _nombre;
  late int _edad;
  String _bio;
  
  //Getters y Setters
  String get nombre => _nombre;
  //set nombre(String value) => _nombre = value; //como es final no puede tener setter
  int get edad => _edad;
  set edad(int value) => _edad = value;
  String get bio => _bio;
  set bio(String value) => _bio = value;

  //Constructores
  Persona(this._nombre, this._edad, [this._bio = 'Nació en Uruguay.']);
  Persona.persona30(this._nombre, this._bio){
    this._edad = 30;
  }
  //Métodos
  @override
  String toString() => '$_nombre tiene $_edad años.\nBio: $_bio';
  int cumplirAnios() => _edad += 1; //modifica la propiedad y la retorna
}