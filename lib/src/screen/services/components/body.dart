import 'package:demo/components/default_button.dart';
import 'package:demo/src/screen/customer/customer_screen.dart';
import 'package:demo/src/screen/services/components/item_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> serviceData = [
    {
      "image": "assets/images/service_1.png",
      "text": "Welding works",
      "money": "\$40",
    },
    {
      "image": "assets/images/service_2.png",
      "text": "Foundation works",
      "money": "\$55",
    },
    {
      "image": "assets/images/service_3.png",
      "text": "Waterproofing",
      "money": "\$20",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  _servicetData(),
                  const Divider(
                    height: 50,
                    thickness: 1,
                    color: Color.fromARGB(255, 238, 238, 240),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromARGB(255, 105, 105, 105)),
                      ),
                      Text("\$105",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 103, 102, 102))),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DefaultButton(
                    text: "Checkout",
                    press: () {
                      Navigator.pushNamed(context, CustomerScreen.routeName);
                    },
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    // onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
                    child: const Text(
                      "Continue Shopping",
                      style: TextStyle(
                          color: Color(0xffFFB19D),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1.5,
                          letterSpacing: 0.8,
                          decoration: TextDecoration.underline),
                    ),
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

  Widget _servicetData() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: serviceData.length,
        itemBuilder: (content, index) => itemService(
              image: serviceData[index]["image"],
              text: serviceData[index]["text"],
              money: serviceData[index]["money"],
            ));
  }
}
