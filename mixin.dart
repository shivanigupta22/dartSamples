class Coder {}

mixin Breathing {
  void swim() => print("Breathing");
}
//mixin used to provide functionality just by adding with at class level
//can be restricted to some class using on keyboard
mixin Walking {
  void walk() => print("Walking");
}

mixin Coding on Coder {
  void code() => print("print('Hello world!')");
}

/// This class now has the `walk()` method
class Human with Walking {}

/// This class now has the `walk()` and `code()` methods
class Developer extends Coder with Walking, Coding {}

//here Coding mixin cannot be accessed because it doesn't extends Coder class
//class Tester with Walking, Coding {}


void main() {
  
  Human h = Human();
  Developer d = Developer();

  print(h..walk());
  print(d..walk()..code());

}
