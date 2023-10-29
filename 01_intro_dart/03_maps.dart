void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Charmander',
    'hp': 100,
    'isAlive': true,
    'abilities': <int, String>{ 
      1: 'Blaze',
      2: 'Solar Power',
    }
  };

  print(pokemon);
  print('Nombre: ${ pokemon['name'] }');
  print('HP: ${ pokemon['hp'] }');
  print('Está vivo: ${ pokemon['isAlive'] }');
  print('Primera habilidad: ${ pokemon['abilities'][1] }');
  print('Segunda habilidad: ${ pokemon['abilities'][2] }');
}
