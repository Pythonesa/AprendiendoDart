void main(List<String> args) {
  outerFor:
  for (int i = 0; i < 5; i++) {
    print('i = ' + i.toString());
    for (int j = 0; j < 5; j++) {
      print('j = ' + j.toString());
      if (j == 2) {
        break outerFor;
      }
    }
  }
}