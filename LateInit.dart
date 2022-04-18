class Meal {
 late String _description;
  //late is used to ensure compiler that we will take care of this prop init.
  //if this prop is accessed before it's initialization, throws error uninit prop

  set description(String desc) {
    _description = 'Meal description: $desc';
  }
 late final _cache = _computeValue();
  //lazy prop = late final ; will be initialized when accessed only
  int get value => _cache;
  
  int _computeValue() {
  print('In _computeValue...');
  return 3;
}
  String get description => _description;
}

void main() {
  final myMeal = Meal();
  myMeal.description = 'Feijoada!';
  print(myMeal.description);
   print('Calling constructor...');
  print('Getting value...');
  print('The value is ${myMeal.value}!');
}
