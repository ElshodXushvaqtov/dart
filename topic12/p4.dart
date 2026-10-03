void main() {
  try {
    int number = int.parse('abc');
    print(number);
  } on FormatException {
    print('Error: this is not a number');
  } catch (e) {
    print('Other error: $e');
  }

  try {
    List<int> list = [1, 2, 3];
    print(list[10]);
  } on FormatException {
    print('Error: this is not a number');
  } on RangeError {
    print('Error: index is out of range');
  } catch (e) {
    print('Other error: $e');
  }

  try {
    throw Exception('Unknown problem');
  } on FormatException {
    print('Error: this is not a number');
  } catch (e) {
    print('Generic error: $e');
  }
}
