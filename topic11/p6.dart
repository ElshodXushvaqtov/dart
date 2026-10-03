Stream<int> getNumbers() async* {
  yield 1;
  yield 2;
  throw Exception('Something went wrong!');
}

void main() async {
  Stream<int> numbers = getNumbers().handleError((error) {
    print('Caught error: $error');
  });

  await for (int n in numbers) {
    print('Number: $n');
  }

  print('Program continues after the error');
}
