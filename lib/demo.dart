abstract class Shape {
  String get name;
  double get perimeter;
}

//四邊形
class Quadrilateral implements Shape {
  late final double leftSide;
  late final double topSide;
  late final double rightSide;
  late final double bottomSide;

  Quadrilateral(this.leftSide, this.topSide, this.rightSide, this.bottomSide) {
    print('\nIn Quadrilateral');
  }

  void showAllSideLength() {
    print('runtimeType(class) :$runtimeType');
    print(
        'leftSide: $leftSide , topSide: $topSide , rightSide: $rightSide , bottomSide:$bottomSide');
  }

  Quadrilateral.twoPairsOfParallelSide(double sideLength1, double sideLengt2) {
    leftSide = sideLength1;
    rightSide = sideLength1;
    topSide = sideLengt2;
    bottomSide = sideLengt2;
  }

  @override
  String get name => '$runtimeType';

  @override
  double get perimeter => leftSide + topSide + rightSide + bottomSide;
}

//正方形
class Square extends Quadrilateral {
  Square(double sideLength)
      : super(sideLength, sideLength, sideLength, sideLength) {
    print('In Square');
  }
  Square.twoPairsOfParallelSide(double sideLength)
      : super.twoPairsOfParallelSide(sideLength, sideLength);
  Square.anthorWwoPairsOfParallelSide(double sideLength)
      : super.twoPairsOfParallelSide(sideLength, sideLength);
}

class Triangle implements Shape {
  late final double aSide;
  late final double bSide;
  late final double cSide;

  Triangle(this.aSide, this.bSide, this.cSide);

  @override
  String get name => '$runtimeType';

  @override
  double get perimeter => aSide + bSide + cSide;
}

class TestClass {
  late final int a;
  TestClass() {
    print('test');
    a = 0;
  }
}

class TestChild extends TestClass {}
