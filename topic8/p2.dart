class Animal {
  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog says: Woof!');
  }
}

void main() {
  Animal a = Animal();
  Dog d = Dog();

  a.makeSound();
  d.makeSound();
}
