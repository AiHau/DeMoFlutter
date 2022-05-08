import 'package:demo/src/screen/sign_in/components/sign_in_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 35),
                  child: const Image(
                      image: AssetImage("assets/images/sign_in.png")),
                ),
                const SignForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
