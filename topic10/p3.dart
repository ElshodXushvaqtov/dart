
class Animal {}

class Dog extends Animal {
  void bark() {
    print('Woof!');
  }
}

class Cat extends Animal {
  void meow() {
    print('Meow!');
  }
}

void main() {
  List<Animal> animals = [Dog(), Cat(), Dog()];

  for (Animal a in animals) {
    if (a is Dog) {
      print('This is a Dog');
      a.bark();
    } else if (a is Cat) {
      print('This is a Cat');
      a.meow();
    }
  }

  Animal x = Dog();
  Dog myDog = x as Dog;
  myDog.bark();
}
