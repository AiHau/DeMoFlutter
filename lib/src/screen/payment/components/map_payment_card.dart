import 'package:flutter/material.dart';

class StackPaymentCard extends StatelessWidget {
  const StackPaymentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30, bottom: 50),
          // child: _listPaymentData(),
          height: 201.26,
          width: double.infinity,

          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 22, 186, 137),
                Color(0xFF0284D8),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        const Positioned(
            top: 35,
            left: 15,
            child: Text(
              ". . . .",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )),
        const Positioned(
            top: 43,
            right: 18,
            child: Text(
              "17/20",
              style: TextStyle(fontSize: 15.5, color: Colors.white),
            )),
        const Positioned(
            bottom: 70,
            left: 19,
            child: Text(
              "\$ 25,388",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )),
        const Positioned(
            top: 43,
            left: 64,
            child: Text(
              "3872",
              style: TextStyle(fontSize: 15.5, color: Colors.white),
            )),
      ],
    );
  }
}
