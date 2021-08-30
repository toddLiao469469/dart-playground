import 'package:demo/demo.dart';

void main(List<String> arguments) {
  print('Hello world: ${calculate()}!');
  final todd = Person(1, 'todd');
  print(todd.position);
  final toddDev = Person.havePosition(25, 'toddDev', position: 'dev');
  print(toddDev.position);

  // todd._age
  final todd2 = Todd(2, 'todd2');
  print(todd2.getName);
}
