void checkAge(int age) {
  try {
    if (age < 0) {
      throw Exception('Age cannot be negative');
    }
    print('Age is $age');
  } catch (e) {
    print('checkAge: found an error, sending it up...');
    rethrow; 
  }
}

void main() {
  try {
    checkAge(20);
    checkAge(-5);
  } catch (e) {
    print('main: caught $e');
  }
}
