import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:your_app_name/secondPage.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is the First Page")),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_circle_right), label: "Next"),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_circle_right), label: "Next"),
        ],
        currentIndex: selectedIndex,
        onTap: (index){
          onItemTapped(index);
        },
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Tap for navigating to the Second Page"),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Secondpage()),
                // );
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return Container(
                    width: double.infinity,
                    height: 200,
                    child: Column(
                      children: [
                        Text("This is the bottom Sheet")
                      ]

                  )
                  );
                });

              },
              child: Text("Navigate"),
            ),
          ],
        ),
      ),
    );
  }
}


void main(){

  int number=10;

  myFun((number){print(number);});
}

void myFun(Function(int) a){
  a;
}


