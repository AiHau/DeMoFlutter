import 'package:flutter/material.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Text(
              "Proven specialists",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Image.asset('assets/images/Illustration_1.png')
          ],
        ),
      ),
    ));
  }
}
