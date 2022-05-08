import 'package:demo/components/default_button.dart';
import 'package:demo/components/socal_card.dart';
import 'package:demo/src/screen/categories/categories_screen.dart';
import 'package:demo/src/screen/sign_in/components/no_account_text.dart';
import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 235, 234, 234),
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: buildNameFormField(),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: const Color.fromARGB(255, 235, 234, 234),
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Center(
                child: buildPasswordFormField(),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.bottomRight,
              child: const Text(
                'Forgot your password?',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            DefaultButton(
              text: "Login",
              press: () {
                Navigator.pushNamed(context, categoriesScreen.routeName);
              },
            ),
            const SizedBox(
              height: 40,
              child: Center(
                child: Text(
                  "or",
                  style: TextStyle(
                    color: Color(0xff838391),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SocalCard(
                      icon: "assets/images/facebook_icon.png", press: () {}),
                ),
                Expanded(
                  child: SocalCard(
                      icon: "assets/images/twitter_icon.png", press: () {}),
                ),
                Expanded(
                  child: SocalCard(
                      icon: "assets/images/linkedin_icon.png", press: () {}),
                ),
              ],
            ),
            const SizedBox(height: 40.0),
            const NoAccountText(),
          ],
        ),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Username',
        border: InputBorder.none,
      ),
    );
  }
}

class buildPasswordFormField extends StatelessWidget {
  const buildPasswordFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Password',
        border: InputBorder.none,
        suffixIcon: IconButton(
            icon: const Icon(Icons.visibility_off), onPressed: () {}),
      ),
    );
  }
}
