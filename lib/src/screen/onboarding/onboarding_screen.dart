import 'package:demo/src/screen/onboarding/components/body.dart';
import 'package:flutter/material.dart';

class onBoardingScreen extends StatelessWidget {
  static String routeName = "/onboarding";
  const onBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
