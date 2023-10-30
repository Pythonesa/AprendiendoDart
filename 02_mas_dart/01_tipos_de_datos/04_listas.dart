void main() {
  var villanos = ['Lex', 'Red Skull', 'Doom'];
  List<String> heroes = ['Superman', 'Batman', 'Flash'];
  heroes[0] = 'Aquaman';
  print(villanos);
  print(heroes);
  heroes.add('Ironman');
  print(heroes);
  heroes.add('Ironman');
  heroes.add('Ironman');
  print(heroes);
  //List sin duplicados:
  heroes = heroes.toSet().toList();
  print(heroes);

}
