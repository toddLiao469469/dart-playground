class Person {
  String _name;
  int _age;
  Person(this._name, this._age);

  String get name => _name;
  set setName(String x) => _name = x;

  int getAge() => _age;
  int setAge(int age) => _age = age;
}
