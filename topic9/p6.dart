class Printer {
  void printText() {
    print('Printing from Printer');
  }
}

mixin PrinterMixin {
  void printText() {
    print('Printing from PrinterMixin');
  }
}

class ReportA implements Printer {
  @override
  void printText() {
    print('ReportA: my own code');
  }
}

class ReportB with PrinterMixin {}

void main() {
  ReportA a = ReportA();
  ReportB b = ReportB();

  a.printText(); 
  b.printText();
}
