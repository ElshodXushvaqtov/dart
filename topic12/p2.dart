int divide(int a, int b) {
  return a ~/ b;
}

void main() {
  print('10 ~/ 2 = ${divide(10, 2)}');

  try {
    print(divide(10, 0));
  } on UnsupportedError {
    print('Error: cannot divide by zero');
  }
}
