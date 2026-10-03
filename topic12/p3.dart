void sayHello(String? name) {
  if (name == null || name.isEmpty) {
    throw ArgumentError('Name cannot be null or empty');
  }
  print('Hello, $name!');
}

void main() {
  sayHello('Ali');

  try {
    sayHello('');
  } catch (e) {
    print(e);
  }

  try {
    sayHello(null);
  } catch (e) {
    print(e);
  }
}
