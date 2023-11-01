void main(List<String> args) {
  // int volumen = 0;
  // switch (volumen) {
  //   case 0: print('Volumen bajo'); break;
  //   case 1: print('Volumen medio'); break;
  //   case 2: print('Volumen alto'); break;
  // }

  Audio volumen = Audio.bajo;
  switch (volumen) {
    case Audio.bajo: print('Volumen bajo'); break;
    case Audio.medio: print('Volumen medio'); break;
    case Audio.alto: print('Volumen alto'); break;
  }
}

enum Audio { bajo, medio, alto }