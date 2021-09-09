void addNumberToFirstItem(List list) {
  list[0].add(1);
  print(list);
}

void main(List<String> arguments) {
  final listA = [1, 2, 3, 4];
  final listB = List.filled(3, []);
  final listC = List.generate(3, (_) => []);
  print(listA);
  print(listB);
  print(listC);
  listB[0].add(1);
  listC[0].add(1);
  print(listB);
  print(listC);

  final setA = {0, 1, 2, 3, 4};
  print(setA);
  final listX = [0, 1, 0, 0, 1, 2, 1, 3, 4, 5, 6, 7];
  final setB = Set.from(listX);
  setB.forEach((element) {
    print(element);
  });
}
