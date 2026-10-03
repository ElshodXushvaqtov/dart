abstract class PaymentStrategy {
  void pay(double amount);
}

class CashPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print('Paid $amount in cash');
  }
}

class CardPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print('Paid $amount by card');
  }
}

class Shop {
  PaymentStrategy strategy;

  Shop(this.strategy);

  void checkout(double amount) {
    strategy.pay(amount);
  }
}

void main() {
  Shop shop = Shop(CashPayment());
  shop.checkout(100);

  shop.strategy = CardPayment();
  shop.checkout(250);
}
