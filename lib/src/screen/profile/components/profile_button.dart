import 'package:demo/components/stateful/button_categories.dart';
import 'package:demo/src/screen/notification/notification_screen.dart';
import 'package:flutter/material.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: const EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 5.0),
          child: buttonCategories(
              text: 'About Me',
              color: 0xffFFFFFF,
              colorText: 0xffC0C0C0,
              press: () {}),
        )),
        Expanded(
            child: Container(
          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
          child: buttonCategories(
              text: 'Reviews',
              color: 0xff20C3AF,
              colorText: 0xffFFFFFF,
              press: () {
                Navigator.pushNamed(context, NotificationScreen.routeName);
              }),
        )),
      ],
    );
  }
}
