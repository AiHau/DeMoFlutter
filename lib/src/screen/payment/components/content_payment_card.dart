import 'package:flutter/material.dart';

class ContentPaymentCard extends StatelessWidget {
  const ContentPaymentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Card Number",
          style: TextStyle(
            letterSpacing: 0.5,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            wordSpacing: 1.8,
            color: Color.fromARGB(255, 104, 103, 103),
          ),
        ),
        Container(
          color: Color.fromARGB(255, 244, 242, 242),
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 23),
          height: 60,
          child: Row(
            children: const [
              Text(
                "**** **** **** ",
                style: TextStyle(
                    height: 2.5,
                    color: Color.fromARGB(255, 176, 174, 174),
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 2),
              ),
              Text(
                "3872",
                style: TextStyle(
                    fontSize: 16,
                    height: 2,
                    color: Color.fromARGB(255, 176, 174, 174),
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                    wordSpacing: 2),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Exp. Month",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 101, 101, 101)),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 103,
                      color: Color.fromARGB(255, 244, 242, 242),
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "07",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 176, 174, 174)),
                          ),
                          Icon(
                            Icons.expand_more,
                            size: 22,
                            color: Color.fromARGB(255, 118, 117, 117),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text("Exp. Year",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 101, 101, 101))),
                  ),
                  Container(
                    height: 60,
                    width: 103,
                    color: Color.fromARGB(255, 244, 242, 242),
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "2020",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 176, 174, 174)),
                        ),
                        Icon(
                          Icons.expand_more,
                          size: 22,
                          color: Color.fromARGB(255, 118, 117, 117),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text("CVV",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 101, 101, 101))),
                    ),
                    Container(
                      height: 60,
                      width: 103,
                      color: Color.fromARGB(255, 244, 242, 242),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "***",
                            style: TextStyle(
                                height: 1.8,
                                fontSize: 12,
                                color: Color.fromARGB(255, 176, 174, 174),
                                letterSpacing: 1.5),
                          ),
                          Icon(
                            Icons.visibility_off,
                            size: 16.5,
                            color: Color.fromARGB(255, 176, 174, 174),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
