class Shape {
  void describe() {
    print('I am a shape');
  }
}

class Polygon extends Shape {
  int sides;

  Polygon(this.sides);

  void showSides() {
    print('I have $sides sides');
  }
}

class Triangle extends Polygon {
  double base;
  double height;

  Triangle(this.base, this.height) : super(3);

  double area() {
    return 0.5 * base * height;
  }
}

void main() {
  Triangle t = Triangle(4, 6);

  t.describe();
  t.showSides();
  print('Area: ${t.area()}');
}
