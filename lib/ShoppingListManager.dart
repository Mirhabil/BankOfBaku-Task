import 'dart:io';

void main() {
  applicationLogic();
}

void onAddItemsClickedAction() {
  print("Enter item:");
  String item = stdin.readLineSync()!;
  shoppingList.add(item);
  print("Item added to shopping list");
  print("");
}

void onDisplayItemsClickedAction() {
  print("Items in shopping list:");
  for (int i = 0; i < shoppingList.length; i++) {
    print("${i + 1}.${shoppingList[i]}");
  }
  print("");
}

void onRemoveItemClickedAction() {
  print("Enter item to remove:");
  String item = stdin.readLineSync()!;
  if (shoppingList.contains(item)) {
    shoppingList.remove(item);
    print("Item removed from shopping list");
  }
}

void onShowTotalCountClickedAction() {
  print("Total count of items in shopping list is ${shoppingList.length}");
}

int createMenu() {
  for (int i = 0; i < actionNames.length; i++) {
    print("${i + 1}.${actionNames[i]}");
  }
  print("Enter your choice:");
  return int.parse(stdin.readLineSync()!);
}

void applicationLogic() {
  int userChoice;
  do {
    userChoice = createMenu();
    switch (userChoice) {
      case 1:
        onAddItemsClickedAction();
        break;
      case 2:
        onDisplayItemsClickedAction();
        break;
      case 3:
        onRemoveItemClickedAction();
        break;
      case 4:
        onShowTotalCountClickedAction();
        break;
    }
  } while (userChoice != 5);
}

List<String> shoppingList = [];

List<String> actionNames = [
  "Add items",
  "Display items",
  "Remove item",
  "Show total count",
  "Exit",
];
