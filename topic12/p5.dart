void functionC() {
  throw Exception('Error in functionC');
}

void functionB() {
  functionC();
}

void functionA() {
  functionB();
}

void main() {
  try {
    functionA();
  } catch (e, stackTrace) {
    print('Error: $e');
    print('Stack trace:');
    print(stackTrace);
  }
}
