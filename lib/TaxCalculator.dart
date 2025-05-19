void main() {
  calculateTax(11650);
}

void calculateTax(int income) {
  int taxRate = 0;
  if (income > 0 && income <= 10000) {
    taxRate = 0;
  } else if (income > 10000 && income <= 30000) {
    taxRate = 10;
  } else if (income > 30000 && income <= 60000) {
    taxRate = 20;
  } else if (income > 60000) {
    taxRate = 30;
  }

  print("Your tax rate is $taxRate%");

  double taxOwed = (income * taxRate) / 100;
  print("Your tax owed is $taxOwed");

  double netIncome = income - taxOwed;
  print("Your net income is $netIncome");
}
