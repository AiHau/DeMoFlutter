import 'package:flutter/material.dart';

class itemService extends StatelessWidget {
  final image, text, money;
  const itemService({Key? key, this.image, this.text, this.money})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: Expanded(
                    child: Image.asset(
                      image,
                      height: 70,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    text,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 105, 105, 105)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Expanded(
                    child: Text(
                      money,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 103, 102, 102)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
