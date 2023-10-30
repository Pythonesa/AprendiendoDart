abstract class Animal {}

abstract class Mammal {}

abstract class Bird {}

abstract class Fish {}

mixin Flyer {
  void fly() => print('I\'m flying!');
}

mixin Swimmer {
  void swim() => print('I\'m swimming!');
}

mixin Walker {
  void walk() => print('I\'m walking!');
}

class Dolphin extends Mammal with Swimmer {}
class Bat extends Mammal with Walker, Flyer {}
class Cat extends Mammal with Walker {}
class Dove extends Bird with Walker, Flyer {}
class Duck extends Bird with Walker, Swimmer, Flyer {}
class Shark extends Fish with Swimmer {}
class FlyingFish extends Fish with Flyer, Swimmer {}

void main() {
  final Duck duck = Duck();
  duck.fly();
  duck.swim();
  duck.walk();

  final batman = Bat();
  batman.fly();
  batman.walk();
}
