abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;
  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void main() {
  List<Shape> shapes = [Circle(2), Rectangle(3, 4), Circle(1)];

  for (Shape s in shapes) {
    print('Area: ${s.area()}');
  }
}
