// Problem 5.3: Dartdoc comments for a validation class
// (parameters, return types, exceptions).

/// A class with simple methods to check user input.
class Validator {
  /// Checks if [age] is valid.
  ///
  /// Parameter [age] - the age of the person.
  ///
  /// Returns `true` if age is between 0 and 120.
  ///
  /// Throws an [ArgumentError] if [age] is negative.
  bool isValidAge(int age) {
    if (age < 0) {
      throw ArgumentError('Age cannot be negative');
    }
    return age <= 120;
  }

  /// Checks if [password] is strong enough.
  ///
  /// Parameter [password] - the password text.
  ///
  /// Returns `true` if the password has at least 8 characters.
  ///
  /// Throws an [ArgumentError] if [password] is empty.
  bool isStrongPassword(String password) {
    if (password.isEmpty) {
      throw ArgumentError('Password cannot be empty');
    }
    return password.length >= 8;
  }
}

void main() {
  Validator validator = Validator();

  print(validator.isValidAge(20)); // true
  print(validator.isValidAge(150)); // false
  print(validator.isStrongPassword('abc')); // false
  print(validator.isStrongPassword('mypassword123')); // true

  try {
    validator.isValidAge(-5);
  } catch (e) {
    print('Error: $e');
  }
}