import 'dart:async';

void main(List<String> args) {
  //final streamController = StreamController<String>(); //solo un listener
  final streamController = StreamController<String>.broadcast(); //múltiples listeners

  streamController.stream.listen(
    (data) => print('Despegando! $data'), 
    onError: (error) => print('Error: $error'),
    onDone: () => print('Misión completa!'),
    cancelOnError: false); //por defecto es false, con True detiene el stream

  streamController.stream.listen(
    (data) => print('Despegando 2! $data'), 
    onError: (error) => print('Error 2: $error'),
    onDone: () => print('Misión completa 2!'),
    cancelOnError: false);

  streamController.sink.add('Apollo 10');
  
  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Houston, tenemos un problema!');
  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 15');

  streamController.close();
  
  print('Fin del main');
}