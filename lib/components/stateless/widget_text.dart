import 'package:demo/components/stateful/button_categories.dart';
import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  String text;
  double size;
  int color;
  WidgetText(
      {Key? key, required this.text, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: Color(color),
      ),
    );
  }
}
