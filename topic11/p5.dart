void main() async {
  Stream<int> numbers = Stream.fromIterable([1, 1, 2, 3, 3, 4, 5, 6, 6]);

  Stream<int> result = numbers
      .distinct() 
      .where((n) => n % 2 == 0) 
      .map((n) => n * 10); 

  await for (int n in result) {
    print(n);
  }
}
