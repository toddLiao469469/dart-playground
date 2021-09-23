import 'dart:async';

import 'package:demo/demo.dart';
import 'package:demo/number_creator.dart';

void main(List<String> arguments) {
  print('Hello world');
  final myStream = NumberCreator().stream.take(10);
  final subscription = myStream.listen((event) {
    print(event);
  });
}
