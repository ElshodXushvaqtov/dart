
class Book {
  final String title;
  final String author;
  final int year;

  
  const Book(this.title, this.author, this.year);

  void show() {
    print('$title by $author ($year)');
  }
}

void main() {
  const Book book1 = Book('Dart Basics', 'John', 2024);
  const Book book2 = Book('Dart Basics', 'John', 2024);

  book1.show();

  
  print('Same object? ${identical(book1, book2)}'); 

  
}
