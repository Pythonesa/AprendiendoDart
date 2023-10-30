void main() {
  var ironman = {
    'name': 'Tony Stark',
    'power': 'Inteligencia y dinero',
    'isAlive': false,
    'level': 9000
  };
  Map<String, dynamic> hulk = {
    'name': 'Bruce Banner',
    'power': 'Super fuerza',
    'isAlive': true,
    'level': 4999
  };
  Map<String, dynamic> captainAmerica = new Map();
  captainAmerica.addAll({
    'name': 'Steve Rogers',
    'power': 'Super fuerza',
    'isAlive': true,
    'level': 5000
  });
  captainAmerica.addEntries([MapEntry('alias', 'Capitán America')]);

  print(ironman);
  print(hulk);
  print(ironman['name']);
  print(hulk['name']);
  print(captainAmerica);

}
