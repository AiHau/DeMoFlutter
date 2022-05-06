import 'package:demo/src/screen/customer/components/body.dart';
import 'package:flutter/material.dart';

class CustomerScreen extends StatelessWidget {
  static String routeName = "/customer";
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: const Center(
            child: Text(
          "Customer info",
          style: TextStyle(color: Color.fromARGB(255, 54, 53, 53)),
        )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.menu,
            ),
          )
        ],
      ),
      body: Body(),
    );
  }
}
