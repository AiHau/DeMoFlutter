// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class buttonCategories extends StatefulWidget {
  String text;
  int color;
  int colorText;
  Function? press;
  buttonCategories({
    Key? key,
    required this.text,
    required this.color,
    required this.colorText,
    this.press,
  }) : super(key: key);

  @override
  State<buttonCategories> createState() => _buttonCategoriesState();
}

class _buttonCategoriesState extends State<buttonCategories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: FlatButton(
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.black12)),
        color: Color(widget.color),
        onPressed: widget.press as void Function()?,
        child: Text(
          widget.text,
          style: TextStyle(fontSize: 18, color: Color(widget.colorText)),
        ),
      ),
    );
  }
}
