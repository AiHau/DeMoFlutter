import 'package:demo/src/screen/setting/setting_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 25),
                      child: const Text(
                        "Portfolio",
                        style: TextStyle(
                            fontSize: 23.5,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 77, 76, 76)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "The last completed works of the contractor are show below.",
                        style: TextStyle(
                            height: 1.5,
                            letterSpacing: 0.6,
                            fontSize: 14,
                            color: Color.fromARGB(255, 127, 126, 126)),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 254,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: 265,
                                child: Image.asset(
                                  "assets/images/portfolio.png",
                                  fit: BoxFit.cover,
                                )),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/images/portfolio_2.png"),
                                  Image.asset("assets/images/portfolio_3.png"),
                                  Image.asset("assets/images/portfolio_4.png"),
                                  Image.asset("assets/images/portfolio_5.png"),
                                ],
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      width: 114,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/star_1.png"),
                          Image.asset("assets/images/star_1.png"),
                          Image.asset("assets/images/star_1.png"),
                          Image.asset("assets/images/star_1.png"),
                          Image.asset("assets/images/star_2.png"),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: Text("Details",
                          style: TextStyle(
                              fontSize: 23.5,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 77, 76, 76))),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: const Text(
                        "I have been working in this position for over 10 years! I have created many design solutions and I think my main best quality is creativity. If you liked my work, please contact me and see the professionalism and quality of my services.",
                        style: TextStyle(
                            height: 1.5,
                            letterSpacing: 0.6,
                            fontSize: 13,
                            color: Color.fromARGB(255, 108, 107, 107)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, SettingScreen.routeName),
                      child: const Text(
                        "Read more",
                        style: TextStyle(
                            color: Color(0xffFFB19D),
                            fontSize: 16,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    SizedBox(height: 20)
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
