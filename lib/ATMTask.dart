import 'dart:io';

void main() {
  applicationLogic();
}

void applicationLogic() {
  int userChoice;
  do {
    createMenu();
    userChoice = int.parse(stdin.readLineSync()!);
    switch (userChoice) {
      case 1:
        onDepositClickAction();
        break;
      case 2:
        onWithdrawClickedAction();
        break;
      case 3:
        onCheckBalanceClickedAction();
        break;
      case 4:
        print("Thank you for using ATM");
        break;
      default:
        print("Invalid choice");
    }
  } while (userChoice != 4);
}

void createMenu() {
  for (int i = 0; i < atmList.length; i++) {
    print("${i + 1}.${atmList[i]}");
  }
  print("Enter your choice:");
}

void onDepositClickAction() {
  print("Enter amount:");
  int amount = int.parse(stdin.readLineSync()!);
  myBalance += amount;
  print("Money added to your balance.Your current balance is $myBalance");
}

void onWithdrawClickedAction() {
  print("Enter amount:");
  int amount = int.parse(stdin.readLineSync()!);
  if (amount <= myBalance) {
    myBalance -= amount;
    print(
      "Money withdrawn from your balance.Your current balance is $myBalance",
    );
  } else {
    print("Insufficient balance");
  }
}

void onCheckBalanceClickedAction() {
  print("Your current balance is $myBalance");
}

int myBalance = 10000;
List<String> atmList = ["Deposit", "Withdraw", "Check Balance", "Exit"];
