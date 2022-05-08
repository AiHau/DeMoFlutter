import 'package:flutter/material.dart';

class itemSetting extends StatelessWidget {
  final text, icon;
  const itemSetting({Key? key, this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: const Color(0xffededed),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.grey),
            ),
            Icon(
              icon,
              color: const Color.fromARGB(255, 90, 90, 90),
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
