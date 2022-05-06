import 'package:demo/components/stateful/button_categories.dart';
import 'package:demo/src/screen/construction/components/item_construction.dart';
import 'package:demo/src/screen/listpayment/list_payment_screen.dart';
import 'package:demo/src/screen/order_in_progress/order_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> itemConstructionData = [
    "Welding works",
    "Foundation works",
    "Roofing",
    "Waterproofing",
    "Architecture",
    "Design"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
        //child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
              color: Color(0xffededed),
              height: 60,
              child: Row(
                children: const [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Text('Search by categories',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 140, 145, 147)))
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20, bottom: 14),
                child: _listConstruction(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 5.0),
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
                          Navigator.pushNamed(
                              context, ListPaymentScreen.routeName);
                        }),
                  )),
                ],
              ),
            )
          ],
        ),
        // ),
      ),
    );
  }

  Widget _listConstruction() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: itemConstructionData.length,
        itemBuilder: (_, index) => itemConstruction(
              text: itemConstructionData[index],
              id: index,
            ));
  }
}
