// Problem 5.4: Markdown inside a Dartdoc comment
// (bold text, bullet points, code block).

/// Calculates the **total price** of a product.
///
/// How it works:
/// * Multiplies the **price** by the **quantity**
/// * Adds a 12% tax
///
/// Example:
/// ```dart
/// double total = calculateTotal(100, 2);
/// print(total); // 224.0
/// ```
double calculateTotal(double price, int quantity) {
  double sum = price * quantity;
  double tax = sum * 0.12;
  return sum + tax;
}

void main() {
  double total = calculateTotal(100, 2);
  print('Total price: $total');
}