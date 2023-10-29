void main() {
  final Hero wolverine = new Hero(name: 'Logan', power: 'Regeneración', isAlive: true);
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

  final Hero ironman = Hero(name: 'Tony Stark', power: 'Inteligencia', isAlive: false);
  print(ironman);

  final Map<String, dynamic> rawJson = {
    'name': 'Capitán América',
    'power': 'Fuerza',
    'isAlive': true
  };

  final Hero captainAmerica = Hero.fromJson(rawJson);
  print(captainAmerica);
  
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'Sin nombre',
      power = json['power'] ?? 'No tiene poder',
      isAlive = json['isAlive'] ?? false;

  @override
  String toString() => "Héroe: $name, poder: $power, vive: ${isAlive ? 'Si!' : 'Nope'}";
}
