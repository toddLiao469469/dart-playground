E ientityFunc<E>(E e) => e;

typedef Identity<E> = E Function(E e);

class Utils<T> {
  Identity<T> ientity = (x) => x;
}

class A<T> {
  T? value;
}

void genericDemo() {
  final intList = <int>[1, 2, 3, 4];
  final stringList = <String>['1', '2', '3', '4'];
  print(intList);
  print(stringList);

  print(ientityFunc<int>(2));

  final a = A<int>();
  // a.value = 'string';
  // 這行會出錯因為 A傳入的是 int type
  a.value = 123;

  final utils = Utils<int>();
  print(utils.ientity(1));
}
