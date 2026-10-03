final class Password {
  String value;
  Password(this.value);
}

base class Account {
  double balance = 0;

  void deposit(double amount) {
    balance = balance + amount;
  }
}

base class SavingsAccount extends Account {
  void addBonus() {
    deposit(100);
  }
}



void main() {
  Password p = Password('12345');
  print('Password: ${p.value}');

  SavingsAccount s = SavingsAccount();
  s.deposit(500);
  s.addBonus();
  print('Balance: ${s.balance}'); // 600
}
