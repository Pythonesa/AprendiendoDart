void main() {
  print(greetEveryone());
  print(greetSomeone('Pepe'));
  print(addTwoNumbers(5, 2));
  print(addTwoNumbersOptional(5, 2));
  print(addTwoNumbersOptional(5));
  print(greatPerson(name: 'Pepe'));
  print(greatPerson(message: 'Hey', name: 'Pepe'));
}

String greetEveryone() {
  return 'Hola a todos!';
}

String greetSomeone(String name) => 'Hola $name!';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) => a + b;

String greatPerson({required String name, String? message = "Hola"}) => "$message, $name!";
