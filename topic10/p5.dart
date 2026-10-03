sealed class Shape {}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
}

class Square extends Shape {
  double side;
  Square(this.side);
}

double getArea(Shape shape) {
  switch (shape) {
    case Circle c:
      return 3.14 * c.radius * c.radius;
    case Square s:
      return s.side * s.side;
  }
}

void main() {
  print('Circle area: ${getArea(Circle(2))}');
  print('Square area: ${getArea(Square(3))}');
}
