import 'package:demo/demo.dart';

int addNumber(int x, int y) => x + y;
int multNumber(int x, int y) => x * y;
bool isOdd(x) => x % 2 != 0;

typedef CurryiedAdd = int Function(int);
CurryiedAdd curryiedAdd(int x) => (int y) => x + y;

void main(List<String> arguments) {
  print('Hello world');
  final a = addNumber(1, multNumber(2, 3));
  print(a);
  final addTen = curryiedAdd(10);
  final b = addTen(2);
  print(b);
  final ListA = [1, 2, 3, 4, 5, 6];
  print(ListA.map(addTen).toList());
  print(ListA.fold<int>(0, addNumber));
  print(ListA.where(isOdd).toList());
  print(ListA.map(addTen).fold<int>(0, addNumber));
  print(ListA.where(isOdd).map(addTen).fold<int>(0, addNumber));

  final c = curryiedAdd(2)(10);
  print(c);
}
