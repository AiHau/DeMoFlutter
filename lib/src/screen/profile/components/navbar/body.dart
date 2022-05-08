import 'package:demo/src/screen/profile/components/navbar/drawer_item.dart';
import 'package:demo/src/screen/profile/components/navbar/pages/home.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Drawer(
          child: Material(
            color: Color(0xff525464),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DrawerItem(
                    text: 'Home',
                    icon: Icons.home,
                    colors: 0xff20C3AF,
                    onPressed: () => onItemPressed(context, index: 0),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                    text: 'Profile',
                    icon: Icons.person,
                    colors: 0xff20C3AF,
                    onPressed: () => onItemPressed(context, index: 1),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                    text: 'Settings',
                    icon: Icons.settings_outlined,
                    colors: 0xff323440,
                    onPressed: () => onItemPressed(context, index: 2),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                    text: 'Messages',
                    colors: 0xff323440,
                    icon: Icons.mail_outline_sharp,
                    onPressed: () => onItemPressed(context, index: 3),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Home()));
        break;
    }
  }
}
