import 'package:flutter/material.dart';

class itemOrder extends StatelessWidget {
  final image, title, money;
  const itemOrder({Key? key, this.image, this.title, this.money})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Image.asset(image),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              title,
              style: const TextStyle(
                  color: Color(0xff525464), fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            money,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
