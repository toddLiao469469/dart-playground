import 'dart:async';

import 'package:demo/demo.dart';
import 'package:demo/number_creator.dart';
import 'package:test/test.dart';

void pauseStream5sAndResume(StreamSubscription subscription) {
  Future.delayed(Duration(seconds: 5), () {
    subscription.pause();
  }).then((_) {
    subscription.resume();
  });
}

void main(List<String> arguments) {
  final myStream = NumberCreator().stream;
  final subscription = myStream.listen((event) {
    print('event $event');
  }, onError: (err) {
    print(err);
  }, onDone: () {
    print('subscription done!!');
  }, cancelOnError: false);

  pauseStream5sAndResume(subscription);

  final myStream2 =
      counterStream().map((event) => event * 2).take(3).listen(print);
  final myStream3 = counterStream()
      .map((event) => event + 3)
      .takeWhile((element) => element <= 15)
      .listen(print);
}
