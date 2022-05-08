// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:demo/routs.dart';
import 'package:demo/src/screen/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 91, 85, 85)),
        ),
      ),
      // home: const onBoardingScreen(),
      initialRoute: onBoardingScreen.routeName,
      routes: routes,
    );
  }
}
