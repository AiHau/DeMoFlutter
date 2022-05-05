import 'package:flutter/material.dart';

class itemListPayment extends StatelessWidget {
  final image, number, time, card;
  const itemListPayment(
      {Key? key, this.image, this.number, this.time, this.card})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Color(0xffededed))),
      margin: EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Expanded(flex: 1, child: Image.asset(image)),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  time,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(child: Image.asset(card)),
        ],
      ),
    );
  }
}
