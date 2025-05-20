import 'dart:io';


void main(){

  bmiCalculate();
}

void bmiCalculate(){

  print("Enter your weight in kg:");
  final double weight = double.parse(stdin.readLineSync()!);
  print("Enter your height in m:");
  final double height = double.parse(stdin.readLineSync()!);

  final double bmi = weight / (height * height);

  if(bmi<20 && bmi>10){
    print("Your BMI is $bmi Underweight");
  }else if(bmi>20 && bmi<25){
    print("Your BMI is $bmi Normal");
  }
  else{
    print("Your BMI is $bmi Overweight");

  }


}