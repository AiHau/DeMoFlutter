// ignore_for_file: deprecated_member_use

import 'package:demo/components/default_button.dart';
import 'package:demo/src/screen/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:demo/src/screen/onboarding/components/onboarding_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> onboardingData = [
    {
      "title": "Proven\nspecialists",
      "text": "We check each specialist before\nhe starts work",
      "image": "assets/images/Illustration_1.png",
    },
    {
      "title": "Honest\nratings",
      "text": "We carefully check each specialist\nand put honest rating",
      "image": "assets/images/Illustration_2.png",
    },
    {
      "title": "Insured\norders",
      "text": "We insure each order for the\namount of 500",
      "image": "assets/images/Illustration_3.png",
    },
    {
      "title": "Create\norder",
      "text": "It's easy, just click on the plus",
      "image": "assets/images/Illustration_4.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (content, index) => OnboardingContent(
                  title: onboardingData[index]["title"],
                  image: onboardingData[index]["image"],
                  text: onboardingData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Spacer(),
                    currentPage == onboardingData.length - 1
                        ? SizedBox()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              onboardingData.length,
                              (index) => buildDot(index: index),
                            ),
                          ),
                    Spacer(),
                    currentPage == onboardingData.length - 1
                        ? FloatingActionButton(
                            backgroundColor: Color(0xff20C3AF),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SignInScreen.routeName);
                            },
                            tooltip: 'Increment',
                            child: const Icon(Icons.add),
                          )
                        : DefaultButton(
                            text: "Next",
                            press: () {},
                          ),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xffC0C0C0) : Color(0xffcdcdcd),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
