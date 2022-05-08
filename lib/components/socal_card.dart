import 'package:flutter/material.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press,
      child: Container(
        decoration: const BoxDecoration(),
        child: Image.asset(icon),
      ),
    );
  }
}
