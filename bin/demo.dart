import 'package:demo/demo.dart';

void main(List<String> arguments) {
  final todd = Person('todd', 1);
  print('name:${todd.name}, age:${todd.getAge()}');
  todd.setName = 'todd2';
  todd.setAge(2);
  print('name:${todd.name}, age:${todd.getAge()}');

  print(Person.type);
  Person.hello();
}
