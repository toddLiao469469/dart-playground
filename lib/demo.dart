class Foo {
  String? apiData;
  Future<void> fecthData() async {
    await Future.delayed(Duration(seconds: 0), () {
      apiData = 'hello wrold';
    });
  }
}

class Test {
  late final String a;
  final String b;
  Test(this.b);
  void setInitValue() {
    a = 'a';
  }
}
