String concatHashCode(String previousValue, String hashCode) =>
    previousValue + hashCode + ',';

void listDemo() {
  final listA = [1, 2, 3, 4];
  final listB = List.filled(3, [], growable: true);
  final listC = List.generate(3, (_) => []);
  print('listA :$listA , listB :$listB , listC :$listC ');

  listB[0].add(1);
  listC[0].add(1);
  print('after add \nlistB :$listB , listC :$listC ');

  final listBHashcode = listB.fold<String>(
    '',
    (previousValue, element) => concatHashCode(
      previousValue,
      element.hashCode.toString(),
    ),
  );
  final listCHashcode = listC.fold<String>(
    '',
    (previousValue, element) => concatHashCode(
      previousValue,
      element.hashCode.toString(),
    ),
  );
  // 可以從這裡得知 List.filled 產生的List裡的每個item的hashcode是一樣的
  // 代表其實每個item的都是同一個 'Object'
  print('listBhashcode:$listBHashcode \nlistChashcode:$listCHashcode');
}
