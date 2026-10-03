// Problem 5.2: Single-line and multi-line comments explaining a calculation.

void main() {
  // Radius of the circle
  double radius = 5;

  // Pi value
  double pi = 3.14;

  /*
    Area of a circle formula:
    area = pi * radius * radius
  */
  double area = pi * radius * radius;

  /*
    Circumference formula:
    circumference = 2 * pi * radius
  */
  double circumference = 2 * pi * radius;

  print('Radius: $radius'); // print the radius
  print('Area: $area'); // should be 78.5
  print('Circumference: $circumference'); // should be 31.4
}