import 'package:demo/components/default_button.dart';
import 'package:demo/src/screen/payment/components/content_payment_card.dart';
import 'package:demo/src/screen/payment/components/map_payment_card.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const StackPaymentCard(),
            const ContentPaymentCard(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DefaultButton(
                    text: "Save card",
                    press: () {},
                  ),
                  const SizedBox(
                    height: 30.0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
