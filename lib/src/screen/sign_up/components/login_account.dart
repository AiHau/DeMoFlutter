import 'package:demo/src/screen/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

class AccountText extends StatelessWidget {
  const AccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?",
            style: TextStyle(color: Color(0xff838391), fontSize: 16)),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignInScreen.routeName),
          child: Text(
            " Sign In",
            style: TextStyle(
                color: Color.fromARGB(255, 230, 134, 45),
                fontSize: 16,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
