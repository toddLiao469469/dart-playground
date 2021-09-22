import 'dart:async';

import 'package:demo/demo.dart';

Future<String> outputAfter3s(String data) => Future.delayed(
      Duration(seconds: 3),
      () => data,
    );

Future throwError() => Future(
      () => throw 'error 123456',
    );

Future<String> fetchData() => Future(
      () => 'data',
    );

void main(List<String> arguments) {
  fetchData()
      // .then((value) => throwError())
      .then(
        (value) => outputAfter3s(value),
      )
      .then((value) => value)
      .then((value) => print(value.length))
      .catchError(
        (err) => print('catch error: $err'),
      )
      .whenComplete(() => print('completed'));

  print('Hello world');
}
