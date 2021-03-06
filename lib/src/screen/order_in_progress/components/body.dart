import 'package:demo/src/screen/order_in_progress/components/item_order.dart';
import 'package:demo/src/screen/order_in_progress/components/item_order.dart';
import 'package:demo/src/screen/order_in_progress/components/order_button.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> orders = [
    {
      "image": "assets/images/order_1.png",
      "title": "Balcony repair",
      "money": "\$24",
    },
    {
      "image": "assets/images/order_3.png",
      "title": "Painting works",
      "money": "\$42",
    },
    {
      "image": "assets/images/order_4.png",
      "title": "Interior design",
      "money": "\$54",
    },
    {
      "image": "assets/images/order_2.png",
      "title": "Redecorating",
      "money": "\$60",
    },
    {
      "image": "assets/images/order_4.png",
      "title": "Interior design",
      "money": "\$54",
    },
    {
      "image": "assets/images/order_3.png",
      "title": "Painting works",
      "money": "\$42",
    },
  ];
  List<Map<String, String>> orders_2 = [
    {
      "image": "assets/images/order_2.png",
      "title": "Redecorating",
      "money": "\$60",
    },
    {
      "image": "assets/images/order_4.png",
      "title": "Interior design",
      "money": "\$54",
    },
    {
      "image": "assets/images/order_3.png",
      "title": "Painting works",
      "money": "\$42",
    },
    {
      "image": "assets/images/order_1.png",
      "title": "Balcony repair",
      "money": "\$24",
    },
    {
      "image": "assets/images/order_2.png",
      "title": "Redecorating",
      "money": "\$60",
    },
    {
      "image": "assets/images/order_4.png",
      "title": "Interior design",
      "money": "\$54",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(child: _listOrder()),
                    Expanded(child: _listOrder_2())
                  ],
                ),
              ),
            ),
            // Expanded(
            // flex: 10,

            // child: _listOrder(),

            // child: Container(
            //   margin: const EdgeInsets.only(top: 30),
            //   child: GridView.count(
            //       crossAxisCount: 2,
            //       crossAxisSpacing: 4.0,
            //       mainAxisSpacing: 8.0,
            //       childAspectRatio: 0.69,
            //       children: List.generate(orders.length, (index) {
            //         return Center(
            //           child: itemOrder(
            //             image: orders[index]["image"],
            //             title: orders[index]["title"],
            //             money: orders[index]["money"],
            //           ),
            //         );
            //       })),
            // ),

            const Expanded(
              child: ButtonOrder(),
            ),
            const SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }

  Widget _listOrder() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: orders.length,
        itemBuilder: (content, index) => itemOrder(
              image: orders[index]["image"],
              title: orders[index]["title"],
              money: orders[index]["money"],
            ));
  }

  Widget _listOrder_2() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: orders_2.length,
        itemBuilder: (content, index) => itemOrder(
              image: orders_2[index]["image"],
              title: orders_2[index]["title"],
              money: orders_2[index]["money"],
            ));
  }
}
