import 'package:demo/src/screen/categories/categories_screen.dart';
import 'package:demo/src/screen/onboarding/onboarding_screen.dart';
import 'package:demo/src/screen/sign_in/sign_in_screen.dart';
import 'package:demo/src/screen/sign_up/sign_up_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  onBoardingScreen.routeName: (context) => onBoardingScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  categoriesScreen.routeName: (context) => categoriesScreen(),
};
