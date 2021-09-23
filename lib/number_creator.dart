import 'dart:async';

class NumberCreator {
  NumberCreator() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick == 3) {
        _controller.addError('ERROR!!!');
      } else if (timer.tick == 20) {
        timer.cancel();
        _controller.close();
      } else {
        _controller.sink.add(timer.tick);
      }
    });
  }
  final _controller = StreamController<int>();
  Stream<int> get stream => _controller.stream;
}

Stream<int> counterStream() {
  return Stream<int>.periodic(const Duration(seconds: 1), (x) => x).take(5);
}
