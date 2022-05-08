import 'package:flutter/material.dart';

class itemOrder extends StatelessWidget {
  final image, title, money;
  const itemOrder({Key? key, this.image, this.title, this.money})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          money,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
