 
void main() {
   const items = ['Salad', 'Popcorn', 'Toast', 'Masagne'];
   var foundItem4 = items.firstWhere(
    (item) => item.length > 10,
    orElse: () => 'None!',
  );
  print(foundItem4);
  print(singleWhere(items));
    print(everyAndAny(items));
      print(everyAndAny(items));
  var numbersByTwo = const [1, -2, 3, 42].map((number) => number * 2);
  print('Numbers: $numbersByTwo');

}

String singleWhere(Iterable<String> items) {
  return items.singleWhere(
      (element) => element.startsWith('M') && element.contains('a'));
}

bool everyAndAny(Iterable<String> items) {
   //return items.every((item) => item.length >= 7);
  return items.any((item) => item.length >= 7);
}
Iterable<String> where(Iterable<String> items) {
  return items.where((item) => item.length >= 7);
}
