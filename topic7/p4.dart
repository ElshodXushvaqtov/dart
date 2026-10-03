abstract class HasPrice {
  double getPrice();
}

enum Coffee implements HasPrice {
  espresso(10000),
  latte(15000),
  cappuccino(14000);

  final double basePrice;

  const Coffee(this.basePrice);

  @override
  double getPrice() {
    return basePrice;
  }

  
  double bigCupPrice() {
    return basePrice * 1.5;
  }
}

void main() {
  for (Coffee c in Coffee.values) {
    print('${c.name}: ${c.getPrice()} sum, big cup: ${c.bigCupPrice()} sum');
  }
}
