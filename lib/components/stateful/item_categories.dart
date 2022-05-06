import 'package:flutter/material.dart';

class itemCategories extends StatefulWidget {
  String images;
  String text;
  IconData icon;
  itemCategories(
      {Key? key, required this.images, required this.text, required this.icon})
      : super(key: key);

  @override
  State<itemCategories> createState() => _itemCategoriesState();
}

class _itemCategoriesState extends State<itemCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                width: 1.0, color: const Color.fromARGB(255, 241, 238, 238))),
        child: Row(children: [
          Container(
            height: 60,
            width: 60,
            color: const Color.fromARGB(255, 241, 238, 238),
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: Expanded(
              flex: 1,
              child: Image.asset(widget.images),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              widget.text,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 145, 144, 144)),
            ),
          ),
          Expanded(child: Icon(widget.icon)),
        ]),
      ),
    );
  }
}
