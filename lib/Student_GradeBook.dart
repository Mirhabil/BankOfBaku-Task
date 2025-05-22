import 'dart:io';

void main(){

  codeLogic();
}

void codeLogic(){
  int userChoice;
  do{
    userChoice=printChoices();
    switch(userChoice){
      case 1:
        getStudentDataClickedAction();
        break;
      case 2:
        displayPassFailStatusClickedAction();
        break;
      case 3:
        exitClickedAction();
        break;
      default:
        print("Invalid choice");
    }
  }while(userChoice!=3);
}

void printDialog(){
  print("Enter Student Name:");
  name = stdin.readLineSync()!;
  print("Enter student's score:");
  score = int.parse(stdin.readLineSync()!);
}

int printChoices(){
  print("Enter your choice number:");
  print("1. Get student data for grading:");
  print("2. Display pass/fail status:");
  print("3. Exit");
  int choice = int.parse(stdin.readLineSync()!);
  return choice;
}

void displayPassFailStatusClickedAction(){
  studentsData.forEach((name, score) {
    String result = score >= 50 ? "Pass" : "Fail";
    print("$name is $result");
  });
}

void getStudentDataClickedAction(){
  printDialog();
  studentsData[name]=score;
  print(studentsData);
  
}

void exitClickedAction(){
  print("Thank you for using our application");
}

String name = "";
int score = 0;
Map<String,int> studentsData=Map();