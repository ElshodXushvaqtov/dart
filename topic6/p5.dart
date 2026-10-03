
class BankAccount {
  double _balance = 0;

  
  double get balance {
    return _balance;
  }

  set balance(double value) {
    if (value < 0) {
      print('Error: balance cannot be negative');
    } else {
      _balance = value;
    }
  }
}

class Student {
  int _age = 0;

  int get age {
    return _age;
  }

  set age(int value) {
    if (value < 0 || value > 120) {
      print('Error: invalid age $value');
    } else {
      _age = value;
    }
  }
}

void main() {
  BankAccount account = BankAccount();
  account.balance = 500; 
  print('Balance: ${account.balance}'); 

  account.balance = -100; 
  print('Balance: ${account.balance}'); 

  Student s = Student();
  s.age = 20;
  print('Age: ${s.age}');
  s.age = 200; 
  print('Age: ${s.age}');
}
