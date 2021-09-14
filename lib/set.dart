void setDemo() {
  final setA = {0, 1, 2, 3, 4};
  print(setA); // {0, 1, 2, 3, 4}

  final listX = [0, 1, 0, 0, 1, 2, 1, 3, 4, 5, 6, 7];
  final setB = Set.from(listX);
  print(setB); //{0, 1, 2, 3, 4, 5, 6, 7}
  setB.forEach((element) {
    print(element);
  });
}
