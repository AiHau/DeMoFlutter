import 'package:demo/src/screen/listpayment/list_payment_screen.dart';
import 'package:demo/src/screen/setting/components/item_setting.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> itemSettingData = [
    {
      "text": "Payment cards",
    },
    {
      "text": "Write to us",
    },
    {
      "text": "Rate us on app store",
    },
    {
      "text": "About us",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 14),
              child: _listSetting(),
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, ListPaymentScreen.routeName),
              child: Text(
                'Log out',
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 230, 134, 45),
                    decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _listSetting() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: itemSettingData.length,
        itemBuilder: (content, index) => itemSetting(
              text: itemSettingData[index]["text"],
              icon: Icons.arrow_forward_ios,
            ));
  }
}
