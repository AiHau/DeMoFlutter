import 'package:flutter/material.dart';

class itemProfile extends StatelessWidget {
  final images, rect, hintText, text;

  itemProfile({Key? key, this.images, this.rect, this.hintText, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.fromLTRB(10.0, 14.0, 10.0, 14.0),
      decoration: BoxDecoration(
          border: Border.all(
              width: 1.0, color: Color.fromARGB(255, 124, 123, 123))),
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.only(bottom: 16.0),
      child: Row(children: [
        Container(
          height: 80,
          width: 80,
          color: Color(0xff525464),
          child: Expanded(
            flex: 1,
            child: Image.asset(images),
          ),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
          child: Expanded(
            flex: 1,
            child: Image.asset(rect),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  hintText,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 145, 144, 144)),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
