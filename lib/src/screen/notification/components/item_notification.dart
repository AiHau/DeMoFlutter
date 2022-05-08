import 'package:flutter/material.dart';

class itemNotification extends StatelessWidget {
  final image, name, company, content;

  const itemNotification(
      {Key? key, this.image, this.name, this.company, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      company,
                      style: const TextStyle(fontSize: 16.0, color: Colors.grey),
                    ),
                  ]),
            ),
          ],
        ),
        Text(
          content,
          style: const TextStyle(
              height: 1.8,
              fontSize: 16,
              color: Color.fromARGB(255, 103, 102, 102)),
        ),
        const Divider(
          height: 50,
          thickness: 1,
          color: Color.fromARGB(255, 238, 238, 240),
        ),
      ],
    );
  }
}
