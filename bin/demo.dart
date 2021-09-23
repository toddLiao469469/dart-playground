import 'dart:async';

final _numberStream =
    Stream<int>.periodic(Duration(seconds: 1), (index) => index).take(5);

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

Future<int> getTotal(Stream<int> stream) async {
  var total = 0;
  await for (var number in stream) {
    total += number;
  }
  return total;
}

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
    print(await getTotal(_numberStream));
  } catch (err) {
    print(err);
  } finally {
    print('done');
  }
}

void main(List<String> arguments) {
  fetch();
}
