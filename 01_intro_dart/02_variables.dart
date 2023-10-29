void main() {

  final String pokemon = 'Charmander';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['Blaze', 'Solar Power'];
  final sprites = <String>[
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png'
  ];

  // dynamic == null
  dynamic errorMessage = 'Algo fue mal';
  errorMessage = true;
  errorMessage = [1, 2, 3];
  errorMessage = {1, 2, 3};
  errorMessage = () => true;
  errorMessage = null;


  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}
