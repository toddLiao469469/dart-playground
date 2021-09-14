void mapDemo() {
  final mapA = {'a': 1, 'b': 2, 'c': 3};
  print('mapA: $mapA ');
  print(mapA['a']);

  final mapB = Map.fromIterable([1, 2, 3, 4]);
  print('mapB: $mapB ');

  final valueList = [0, 1, 2];
  final keyList = ['z', 'x', 'c'];
  final mapC = Map.fromIterables(keyList, valueList);
  print('mapC: $mapC ');
}
