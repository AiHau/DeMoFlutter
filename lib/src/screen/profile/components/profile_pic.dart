import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset("assets/images/img_Profile.png"),
      const SizedBox(
        height: 20,
      ),
      const Text(
        "Jeremías del Pozo",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 103, 102, 102),
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      const Text(
        "New York • ID: 1120611",
        style: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 14),
      ),
      const SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: const Text(
          " Edit",
          style: TextStyle(
              color: Color.fromARGB(255, 240, 145, 56),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline),
        ),
      ),
    ]);
  }
}
