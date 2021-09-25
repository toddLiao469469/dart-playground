import 'package:demo/demo.dart';

String concatString(String input) => input + '---';
void main(List<String> arguments) async {
  print('Hello world');
  final foo = Foo();
  print(foo.apiData?.length);
  await foo.fecthData();
  // concatString(foo.apiData); 這行會出錯
  concatString(foo.apiData!);
  print(foo.apiData!.length);

  final test = Test('');
  test.setInitValue();
  print(test.a);
}
