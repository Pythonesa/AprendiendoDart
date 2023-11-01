class MiServicio {
  static final MiServicio _singleton = MiServicio._internal();
  
  String url = 'https://www.google.com/';
  String key = 'AIzaSyC5s0jg9JnZf6ZI8Y2i6n7jS7fN5yKwXvQ';

  MiServicio._internal();

  factory MiServicio() {
    return _singleton;
  }
}
