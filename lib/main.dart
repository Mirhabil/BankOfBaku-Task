import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_app_name/RecyclerViewPage.dart';
import 'package:your_app_name/firstPage.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecyclerViewPage(),
    );
  }
}

