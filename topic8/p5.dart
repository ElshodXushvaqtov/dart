abstract class Employee {
  String name;

  Employee(this.name);

  double getSalary();

  void showInfo() {
    print('$name earns ${getSalary()}');
  }
}

class Manager extends Employee {
  Manager(String name) : super(name);

  @override
  double getSalary() {
    return 5000;
  }
}

class Intern extends Employee {
  Intern(String name) : super(name);

  @override
  double getSalary() {
    return 1000;
  }
}

void main() {

  Manager m = Manager('Aziz');
  Intern i = Intern('Lola');

  m.showInfo();
  i.showInfo();
}
