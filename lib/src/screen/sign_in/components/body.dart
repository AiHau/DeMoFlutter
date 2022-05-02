import 'package:demo/components/default_button.dart';
import 'package:demo/src/screen/categories/categories_screen.dart';
import 'package:demo/src/screen/sign_in/components/no_account_text.dart';
import 'package:demo/components/socal_card.dart';
import 'package:demo/src/screen/sign_in/components/sign_in_form.dart';
import 'package:demo/src/screen/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 50),
                  child: Image(image: AssetImage("assets/images/sign_in.png")),
                ),
                SignForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}