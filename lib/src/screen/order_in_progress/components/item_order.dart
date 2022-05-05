import 'package:flutter/material.dart';

class itemOrder extends StatelessWidget {
  final image, title, money;
  const itemOrder({Key? key, this.image, this.title, this.money})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(image),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(
            money,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
