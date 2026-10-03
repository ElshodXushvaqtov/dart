class Student {
  String name;
  int age;

  Student(String n, int a)
      : assert(a > 0, 'Age must be positive'),
        name = n,
        age = a {
    print('Student $name created');
  }
}

class Rectangle {
  double width;
  double height;

  Rectangle(double w, double h)
      : width = w < 0 ? 0 : w,
        height = h < 0 ? 0 : h;

  double area() {
    return width * height;
  }
}

void main() {
  Student s = Student('Ali', 20);
  print('${s.name} is ${s.age}');

  Rectangle r1 = Rectangle(4, 5);
  print('Area r1: ${r1.area()}'); 

  Rectangle r2 = Rectangle(-3, 5);
  print('Width r2: ${r2.width}'); 
}
