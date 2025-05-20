void main(){
  //multiplicationTable();
  specificNumberMultiplication(3);
}

void multiplicationTable(){
  for(int i=1;i<=10;i++){
    for(int j=1;j<=10;j++){
      print("$i*$j=${i*j}");
    }
    print("");

  }
}

void specificNumberMultiplication(int number){

  for(int i=1;i<=10;i++){
    print("$i*$number=${i*number}");
  }

}
