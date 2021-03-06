import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key,
      required this.text,
      required this.icon,
      required this.onPressed,
      required this.colors})
      : super(key: key);
  final String text;
  final int colors;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            // backgroundColor: Colors.black38,
            backgroundColor: Color(colors),
            child: Icon(
              icon,
              size: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
