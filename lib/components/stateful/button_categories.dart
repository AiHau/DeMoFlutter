import 'package:flutter/material.dart';

class buttonCategories extends StatefulWidget {
  String text;
  int color;
  buttonCategories({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  State<buttonCategories> createState() => _buttonCategoriesState();
}

class _buttonCategoriesState extends State<buttonCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Container(
          height: 60.0,
          width: 150.0,
          child: Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.grey, width: 1)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff20C3AF))),
              child: Text(
                widget.text,
                style: TextStyle(color: Color(widget.color)),
              ),
              onPressed: () {},
            ),
          ),
        )
      ]),
    );
  }
}
