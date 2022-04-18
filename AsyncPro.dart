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
