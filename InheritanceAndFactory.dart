import 'dart:math';

abstract class Shape {
//   factory method is only allowed when sub classes use implements
//   factory method in
//   factory Shape(String type) {
//     if (type == 'circle') return Circle(2);
//     if (type == 'square') return Square(2);
//     throw 'Can\'t create $type.';
//   }
  
  num get area;
  //abstract method = method without body
  void method1();
  void method2() {
    print('rrrrrr');
  }
}
//extending a abstract class = inheritance
//extend doesn't force to override all method
class Circle extends Shape {
  final num radius;
  Circle(this.radius);
  @override
  num get area => pi * pow(radius, 2);

  @override
  void method1() {
    // TODO: implement method1
  }
}
//implementing a abstract class = interface
// interface foreces to override all abstract methods
class Square implements Shape {
  final num side;
  Square(this.side);
    @override
  num get area => pow(side, 2);

  @override
  void method1() {
    // TODO: implement method1
  }

  @override
  void method2() {
    // TODO: implement method2
  }
}

main() {
  final circle = Circle(2);
  final square = Square(2);
  print(circle.area);
  print(square.area);
}
