import 'package:flutter/cupertino.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;

  CustomTextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Text("$text", textAlign: TextAlign.center);
  }
}
