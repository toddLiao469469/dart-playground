//四邊形
class Quadrilateral {
  late final leftSide;
  late final topSide;
  late final rightSide;
  late final bottomSide;

  Quadrilateral(this.leftSide, this.topSide, this.rightSide, this.bottomSide) {
    print('\nIn Quadrilateral');
  }

  void showAllSideLength() {
    print('runtimeType(class) :$runtimeType');
    print(
        'leftSide: $leftSide , topSide: $topSide , rightSide: $rightSide , bottomSide:$bottomSide');
  }

  Quadrilateral.twoPairsOfParallelSide(int sideLength1, int sideLengt2) {
    leftSide = sideLength1;
    rightSide = sideLength1;
    topSide = sideLengt2;
    bottomSide = sideLengt2;
  }
}

//正方形
class Square extends Quadrilateral {
  Square(int sideLength)
      : super(sideLength, sideLength, sideLength, sideLength) {
    print('In Square');
  }
  Square.twoPairsOfParallelSide(int sideLength)
      : super.twoPairsOfParallelSide(sideLength, sideLength);
  Square.anthorWwoPairsOfParallelSide(int sideLength)
      : super.twoPairsOfParallelSide(sideLength, sideLength);
}

class TestClass {
  late final int a;
  TestClass() {
    print('test');
    a = 0;
  }
}

class TestChild extends TestClass {}
