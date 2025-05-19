import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecyclerViewPage extends StatelessWidget {
  const RecyclerViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("This is the RecyclerView Page"),),
        body: Container(
          child: ListView(
            children:listOfItems.map((it){
              return ListTile(
                leading: Icon(Icons.start),
                title: Text(it.title),
                //subtitle: Text(it.subtitle),
              );
            }).toList(),
          ),



          ),
        ),
      );

  }
}

class ListViewItem {
  final String title;
  final String subtitle;
  final String icon;

  ListViewItem(this.title, this.subtitle, this.icon);
}


List<ListViewItem> listOfItems = [
  ListViewItem("Title 1", "Subtitle 1", "Icon 1"),
  ListViewItem("Title 2", "Subtitle 2", "Icon 2"),
  ListViewItem("Title 3", "Subtitle 3", "Icon 3")
];
