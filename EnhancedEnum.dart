
enum Vehicle implements Comparable<Vehicle> {
//   rules to declare enhanced enum

  //1. const constructor
  //2. final fields
  //3. There cannot be overrides for index, hashCode, the equality operator ==.
  //4. A member named values cannot be declared in an enum, as it would conflict with the automatically generated static values getter.
  //5. All instances of the enum must be declared in the beginning of the declaration, and there must be at least one instance declared.
  //6. Factory constructors can only return one of the fixed, known enum instances.
  //7. No other class can be extended as Enum is automatically extended.
  
  //5
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  //1
  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  //2
  final int tires;
  final int passengers;
  final int carbonPerKilometer;
  
  //4
  //final int values;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  //3
//   @override
//   int get index => 0;
//   @override
//   int get hashCode => 0;
//   @override
//   bool operator ==(Object? other) => false;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}
