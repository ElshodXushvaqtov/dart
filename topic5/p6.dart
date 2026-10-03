// Problem 5.6: A fully documented class, ready for `dart doc`.
// To generate documentation: put this file in the lib/ folder
// of a Dart project and run:  dart doc

/// A simple student record.
class Student {
  /// The student's full name.
  String name;

  /// The student's grades (0 - 100).
  List<int> grades = [];

  /// Creates a new [Student] with the given [name].
  Student(this.name);

  /// Adds a new [grade] to the student.
  ///
  /// Throws an [ArgumentError] if [grade] is not between 0 and 100.
  void addGrade(int grade) {
    if (grade < 0 || grade > 100) {
      throw ArgumentError('Grade must be between 0 and 100');
    }
    grades.add(grade);
  }

  /// Returns the average of all grades.
  ///
  /// Returns `0` if there are no grades.
  double getAverage() {
    if (grades.isEmpty) {
      return 0;
    }
    int sum = 0;
    for (int g in grades) {
      sum = sum + g;
    }
    return sum / grades.length;
  }

  /// Returns `true` if the average is 60 or more.
  bool hasPassed() {
    return getAverage() >= 60;
  }
}

void main() {
  Student s = Student('Ali');
  s.addGrade(80);
  s.addGrade(70);
  s.addGrade(90);

  print('Name: ${s.name}');
  print('Average: ${s.getAverage()}');
  print('Passed: ${s.hasPassed()}');
}