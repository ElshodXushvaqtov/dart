
enum Color { red, green, blue }

void main() {
  Color c = Color.values.byName('green');
  print('Parsed: $c');

  try {
    Color wrong = Color.values.byName('yellow');
    print(wrong);
  } catch (e) {
    print('Error: "yellow" is not a Color');
  }
}
