import 'package:demo/components/default_button.dart';
import 'package:demo/src/screen/listpayment/components/item_listpayment.dart';
import 'package:demo/src/screen/payment/payment_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> listPaymentData = [
    {
      "image": "assets/images/card_1.png",
      "number": "*** *** *** 3872",
      "time": "17/2020",
      "card": "assets/images/visa_4.png",
    },
    {
      "image": "assets/images/card_2.png",
      "number": "*** *** *** 2873",
      "time": "07/2022",
      "card": "assets/images/visa_4.png",
    },
    {
      "image": "assets/images/card_3.png",
      "number": "*** *** *** 3212",
      "time": "10/2024",
      "card": "assets/images/mastercard.png",
    },
    {
      "image": "assets/images/card_4.png",
      "number": "*** *** *** 3412",
      "time": "12/2024",
      "card": "assets/images/visa_4.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: _listPaymentData(),
              ),
            ),
            Expanded(
              child: DefaultButton(
                text: "Add new card",
                press: () {
                  Navigator.pushNamed(context, PaymentScreen.routeName);
                },
              ),
            ),
            const SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }

  Widget _listPaymentData() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: listPaymentData.length,
        itemBuilder: (content, index) => itemListPayment(
              image: listPaymentData[index]["image"],
              number: listPaymentData[index]["number"],
              time: listPaymentData[index]["time"],
              card: listPaymentData[index]["card"],
            ));
  }
}
