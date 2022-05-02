import 'package:demo/src/screen/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInScreen({Key? key}) : super(key: key);

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
          "Sign In",
          style: TextStyle(color: Color.fromARGB(255, 54, 53, 53)),
        )),
        actions: const [
          Icon(
            Icons.menu,
          )
        ],
      ),
      body: Body(),
    );
  }
}
