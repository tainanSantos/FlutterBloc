import 'dart:async';

class HomeBloc {
  final StreamController _streamController = StreamController<String>();
  Sink get input => _streamController.sink;
  Stream get output => _streamController.stream;

  String text;
  setText(String value) {
    this.text = value;
    input.add(text);
  }
}
