import 'package:demo/components/default_button.dart';
import 'package:demo/src/screen/notification/components/item_notification.dart';
import 'package:demo/src/screen/order_in_progress/order_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> notificationData = [
    {
      "image": "assets/images/img_face.png",
      "name": "Joel Rowe",
      "company": "Bitrow Company",
      "content":
          "Sorry, all the artists in the Interior Design category are busy right now. If your task is still relevant - go to the task details page and click \"Extend task”.",
    },
    {
      "image": "assets/images/img_face_2.png",
      "name": "Cole Payne",
      "company": "Corporation Kraton",
      "content":
          "We have found a contractor for your task \"Cleaning services”. Please see the details.",
    },
    {
      "image": "assets/images/img_face_3.png",
      "name": "Elva Stone",
      "company": "Grand Service Company",
      "content":
          "David Coleman is ready to complete your assignment and get started soon! View David's profile and carefully review the order details. Then confirm the order.",
    },
    {
      "image": "assets/images/img_face.png",
      "name": "Joel Rowe",
      "company": "Bitrow Company",
      "content":
          "Sorry, all the artists in the Interior Design category are busy right now. If your task is still relevant - go to the task details page and click \"Extend task”.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                child: _listNotification(),
              ),
            ),
            Expanded(
              child: DefaultButton(
                text: "View all",
                press: () {
                  Navigator.pushNamed(context, OrderScreen.routeName);
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }

  Widget _listNotification() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: notificationData.length,
        itemBuilder: (content, index) => itemNotification(
              image: notificationData[index]["image"],
              name: notificationData[index]["name"],
              company: notificationData[index]["company"],
              content: notificationData[index]["content"],
            ));
  }
}
