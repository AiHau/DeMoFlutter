import 'package:demo/components/stateful/button_categories.dart';
import 'package:demo/src/screen/construction/construction_screen.dart';
import 'package:demo/src/screen/services/service_screen.dart';
import 'package:flutter/material.dart';

class ButtonOrder extends StatelessWidget {
  const ButtonOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
          child: buttonCategories(
              text: 'Archive',
              color: 0xffFFFFFF,
              colorText: 0xffC0C0C0,
              press: () {
                Navigator.pushNamed(context, ServiceScreen.routeName);
              }),
        )),
        Expanded(
            child: Container(
          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
          child: buttonCategories(
              text: 'In work',
              color: 0xff20C3AF,
              colorText: 0xffFFFFFF,
              press: () {
                Navigator.pushNamed(context, ConstructionScreen.routeName);
              }),
        )),
      ],
    );
  }
}
