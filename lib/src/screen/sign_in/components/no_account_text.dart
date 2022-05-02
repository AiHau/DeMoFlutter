import 'package:demo/src/screen/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?",
            style: TextStyle(color: Color(0xff838391), fontSize: 16)),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            " Sign Up",
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
