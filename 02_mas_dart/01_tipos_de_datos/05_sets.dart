void main() {
  var villanos = {'Lex', 'Red Skull', 'Doom'};
  print(villanos);
  villanos.add('Vel');
  print(villanos);
  villanos.add('Vel'); // Duplicado
  print(villanos); // {Lex, Red Skull, Doom, Vel}
  villanos.remove('Vel');
  print(villanos);

  Set<String> heroes = {'Superman', 'Batman', 'Hulk'};
  print(heroes);
}