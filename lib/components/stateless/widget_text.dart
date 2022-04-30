import 'package:demo/components/stateful/button_categories.dart';
import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  String text;
  double? size;
  Color? color;
  FontWeight? fontWeight;
  WidgetText(
      {Key? key, required this.text, this.size, this.color, this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size,
      color: Color(0xff838391), fontWeight: fontWeight),
    );
  }
}
