mixin Flyable {
  void fly() {
    print('I am flying!');
  }
}

class Bird with Flyable {
  String name;

  Bird(this.name);
}

void main() {
  Bird b = Bird('Eagle');
  print(b.name);
  b.fly(); // method comes from the mixin
}
