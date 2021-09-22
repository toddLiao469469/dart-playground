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

Future<String> fetchData2() async => 'data';

void main(List<String> arguments) async {
  try {
    // throwError();
    print('n1');
    final data = await outputAfter3s('asyncData1');
    print('n2');

    final data2 = await outputAfter3s('asyncData2');
    print('n3');

    print('$data');
    print('$data2');
  } catch (err) {
    print(err);
  }
}
