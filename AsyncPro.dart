Future<String> fetchUserOrder() =>
    // Imagine that this function is more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte'
    );

void main() async {
      print('Fetching user order...');
  print(await fetchUserOrder());
  int? q;
  //handle nullable value by default
  print(q ?? 22);

}

//future executing in serial
Future result = costlyQuery(url);
result
    .then((value) => expensiveWork(value))
    .then((_) => lengthyComputation())
    .then((_) => print('Done!'))
    .catchError((exception) {
});

//future excuting parallelly
//wait for all future to execute
await Future.wait([
  deleteLotsOfFiles(),
  copyLotsOfFiles(),
  checksumLotsOfOtherFiles(),
]);
print('Done with all the long steps!');
