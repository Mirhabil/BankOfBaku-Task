import 'dart:io';

void main() {
  calculateFun();
}

void calculateFun() {
  print("Enter the First number:");
  final int num1 = int.parse(stdin.readLineSync()!);
  print("Enter the Second number:");
  final int num2 = int.parse(stdin.readLineSync()!);
  print("Enter the Operator:");
  final String operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      print("${num1 + num2}");
      break;
    case '-':
      print("${num1 - num2}");
      break;
    case '*':
      print("${num1 * num2}");
      break;
    case '/':
      print("${num1 / num2}");
      break;
    default:
      print("Invalid Operator");
  }
}
