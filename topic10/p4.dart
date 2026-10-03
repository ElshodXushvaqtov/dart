class Repository<T> {
  List<T> items = [];

  void add(T item) {
    items.add(item);
  }

  T getAt(int index) {
    return items[index];
  }

  void showAll() {
    for (T item in items) {
      print(item);
    }
  }
}

void main() {
  Repository<String> names = Repository<String>();
  names.add('Ali');
  names.add('Lola');
  names.showAll();

  Repository<int> numbers = Repository<int>();
  numbers.add(10);
  numbers.add(20);
  print('First number: ${numbers.getAt(0)}');
}
