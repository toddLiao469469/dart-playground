import 'package:demo/demo.dart';

void main(List<String> arguments) {
  final quadrilateral1 = Quadrilateral(1, 2, 3, 4);
  quadrilateral1.showAllSideLength();
  final square1 = Square(2);
  square1.showAllSideLength();
  final square2 = Square.anthorWwoPairsOfParallelSide(2);
  square2.showAllSideLength();
  print(square2.perimeter);
  print(square2.name);

  final test = TestClass();
  print(test);
  final testChild = TestChild();
  print(testChild);
}
