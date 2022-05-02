import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key? key,
    this.title,
    this.image,
    this.text,
  }) : super(key: key);
  final title, image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 2),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        Spacer(flex: 2),
        Image.asset(image),
        Spacer(flex: 2),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xfffC0C0C0)),
        ),
        Spacer(),
      ],
    );
  }
}
