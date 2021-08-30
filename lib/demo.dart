int calculate() {
  print('calculate');
  return 6 * 11;
}

const AAAA = 123;

class Person {
  int _age;
  String _name;
  String position = '';
  static const type = 'humen';
  static void hello() {
    print('hello');
  }

  Person(this._age, this._name);
  Person.havePosition(this._age, this._name, {required this.position});
  int get getAge => _age;
  String get getName => _name;
  set setName(String x) => _name = x;

  void personAge(int x) {
    _age = x;
  }
}

class Todd extends Person {
  Todd(int _age, String _name) : super(_age, _name);
  // Todd(int _age, String _name, String position)
  //     : super.havePosition(_age, _name, position: position);
}
