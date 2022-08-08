
void main() {
  void enableFlags(bool? bold, bool? hidden, [bool? hidden2]) {
    print("$bold $hidden $hidden2");
  }

  void enableFlags2({bool? bold = false, bool? hidden}) {
    print("$bold $hidden");
  }

  final try2 = Tryout(3);

  print(try2.va = 4);

  print(try2.va = 333);
  var employee = Employee("shivani", "gupta");

  print(employee.firstName);

  enableFlags(true, true);

  enableFlags2(hidden: true);
}

class Tryout {
  late final int? va;

  int? va2;

  Tryout(this.va2) {
    print(va2);
  }
}

class Person {
  String? firstName;

  String? lastName;

  Person(this.firstName, this.lastName) {
    print("$firstName $lastName");

    print("in person");
  }
}

class Employee extends Person {
  // Employee(super.firstName, super.lastName); // will also work

  Employee(super.firstName, super.lastName) : super() {
    print("in emp");
  } // will also work
}
