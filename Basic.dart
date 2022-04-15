void main() {
  //declare nullable prop
  Bicycle? bike = Bicycle(cadence:7);
  //_speed is read only prop
 // bike._speed = 33
  // access nullable prop
  print(bike?._speed);
    print(bike);

}

class Bicycle {
  int? cadence;
  int gear;
 
  final int _speed = 5;
  //getter for read only prop but not
  //prop hence cannot be accessed directly on the instance of  bicycle
  int get speed => _speed;
  
  //overriding
  
  @override
String toString() => 'Bicycle: $speed mph with gear $gear and cadence $cadence';

  Bicycle({this.cadence,this.gear = 44});
  //cannot define multiple constructor instead can use optional params
   

}
