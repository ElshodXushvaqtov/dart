class Animal {
  String name;
  Animal(this.name);
}

class Dog extends Animal {
  Dog(String name) : super(name);
}

mixin Barking on Dog {
  void bark() {
    // We can use `name` because we know it is a Dog
    print('$name says Woof!');
  }
}

class Puppy extends Dog with Barking {
  Puppy(String name) : super(name);
}

// class Cat extends Animal with Barking {}
// ERROR: Barking can only be used on Dog

void main() {
  Puppy p = Puppy('Rex');
  p.bark();
}
