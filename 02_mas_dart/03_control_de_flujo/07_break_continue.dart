void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    if (i == 3) {
      continue; // salta la iteración
    }
    if (i == 6) {
      break; // corta la iteración
    }
    print(i);
  }
}