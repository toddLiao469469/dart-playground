import 'dart:async';

import 'package:demo/demo.dart';

void main(List<String> arguments) {
  Timer(Duration(seconds: 0), () {
    print('Timer 1');
  });
  print('normal print 1 ');

  Future.delayed(Duration(seconds: 1), () {
    print('future');
  })
      .then((value) => print('then 1'))
      .then((value) => print('then 2'))
      .then((value) => print('then 3'));

  Timer(Duration(seconds: 0), () {
    print('Timer 2');
  });

  print('main end');
}
