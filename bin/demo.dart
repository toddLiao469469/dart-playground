import 'dart:async';

import 'package:demo/number_creator.dart';

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

void fetch() async {
  try {
    // throwError();
    final data1 = await fetchData();
    final data2 = await fetchData2();
    print('n1');
    final dataViaTimer1 = await outputAfter3s('asyncData1');
    print('n2');

    final dataViaTimer2 = await outputAfter3s('asyncData2');
    print('$data1');
    print('$data2');
    print('$dataViaTimer1');
    print('$dataViaTimer2');
  } catch (err) {
    print(err);
  }
}

void main(List<String> arguments) {
  fetch();
}
