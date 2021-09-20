import 'dart:async';

void eventLoopDemo() {
  Timer(Duration(seconds: 0), () {
    print('eventLoop Timer 1');
  });
  print('eventLoop normal print 1 ');

  print('eventLoop main end');
}
