void main(List<String> arguments) {
  final listA = [1, 2, 3, 4];
  final listB = List.filled(3, []);
  final listC = List.generate(3, (_) => []);
  var tringList = ['vue', 'kotlin', 'dart', 'angular', 'flutter'];
  var reversed = tringList..add('123');

  listA.add(1);

  print(tringList.hashCode);
  print(tringList);
  print(reversed.hashCode);
  print(reversed);
  listB.forEach((element) {
    print(element.hashCode);
  });
  listC.forEach((element) {
    print(element.hashCode);
  });
}
