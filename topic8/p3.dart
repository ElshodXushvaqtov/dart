class Car {
  String brand;

  Car(this.brand);

  void info() {
    print('Brand: $brand');
  }
}

class ElectricCar extends Car {
  int battery;

  ElectricCar(super.brand, this.battery);

  @override
  void info() {
    super.info();
    print('Battery: $battery kWh');
  }
}

void main() {
  ElectricCar tesla = ElectricCar('Tesla', 75);
  tesla.info();
}
