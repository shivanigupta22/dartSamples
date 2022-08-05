void main() {
  //dynamic keyword
  //default assigned value to var/dynamic var ==null
  dynamic a; 
    print(a);//null
   a = 3;
  print(a);
    a = "sss";
  print(a);
print(  ABC.staticMethod2(1).hashCode);
 print(  ABC.staticMethod(al:1,f:3).hashCode);
 
}

class ABC {
  var al;
  
  //named constructor
  ABC.staticMethod2(int a) {
    al =3;
  }
  
  //named constructor with named parameters
  ABC.staticMethod({required this.al,f}) {
    print(al);
  }
}
