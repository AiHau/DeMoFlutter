import 'package:demo/src/screen/profile/components/item_info_profile.dart';
import 'package:demo/src/screen/profile/components/profile_button.dart';
import 'package:demo/src/screen/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> profiles = [
    {
      "image": "assets/images/phone_icon.png",
      "rect": "assets/images/rectangle.png",
      "hintText": "Phone number",
      "text": "+3746589923",
    },
    {
      "image": "assets/images/email_icon.png",
      "rect": "assets/images/rectangle.png",
      "hintText": "Email",
      "text": "conrad@gmail.com",
    },
    {
      "image": "assets/images/completed_icon.png",
      "rect": "assets/images/rectangle.png",
      "hintText": "Completed projects",
      "text": "248",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  ProfilePic(),
                  SizedBox(
                    height: 10,
                  ),
                  ButtonProfile(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color(0xFF525464),
              child: Container(
                  color: const Color(0xFF525464),
                  margin:
                      const EdgeInsets.only(top: 40, left: 30.0, right: 30.0),
                  child: _listProfile()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _listProfile() {
    return ListView.builder(
        itemCount: profiles.length,
        itemBuilder: (content, index) => itemProfile(
              images: profiles[index]["image"],
              rect: profiles[index]["rect"],
              hintText: profiles[index]["hintText"],
              text: profiles[index]["text"],
            ));
  }
}
