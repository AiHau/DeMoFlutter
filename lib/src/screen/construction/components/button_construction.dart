import 'package:demo/components/stateful/button_categories.dart';
import 'package:demo/src/screen/listpayment/list_payment_screen.dart';
import 'package:demo/src/screen/order_in_progress/order_screen.dart';
import 'package:flutter/material.dart';

class buttonConstruction extends StatelessWidget {
  const buttonConstruction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 5.0),
            child: buttonCategories(
                text: 'Skip',
                color: 0xffFFFFFF,
                colorText: 0xffC0C0C0,
                press: () {
                  Navigator.pushNamed(context, OrderScreen.routeName);
                }),
          )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
            child: buttonCategories(
                text: 'Done',
                color: 0xff20C3AF,
                colorText: 0xffFFFFFF,
                press: () {
                  Navigator.pushNamed(context, ListPaymentScreen.routeName);
                }),
          )),
        ],
      ),
    );
  }
}
