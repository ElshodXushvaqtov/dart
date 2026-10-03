// Problem 5.5: @deprecated and @override with doc comments.

/// A simple animal class.
class Animal {
  /// Makes the animal sound.
  void makeSound() {
    print('Some sound');
  }
}

/// A cat is an animal.
class Cat extends Animal {
  /// Replaces the [Animal.makeSound] method.
  ///
  /// `@override` means this method changes the parent's method.
  @override
  void makeSound() {
    print('Meow!');
  }

  /// Old method. Do not use it anymore.
  ///
  /// `@deprecated` means this method is old.
  /// Use [makeSound] instead.
  @deprecated
  void sayMeow() {
    print('Meow (old method)');
  }
}

void main() {
  Cat cat = Cat();
  cat.makeSound();

  // This still works, but the editor shows a warning (line through it)
  cat.sayMeow();
}