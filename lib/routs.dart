import 'package:demo/src/screen/categories/categories_screen.dart';
import 'package:demo/src/screen/notification/notification_screen.dart';
import 'package:demo/src/screen/onboarding/onboarding_screen.dart';
import 'package:demo/src/screen/order_in_progress/order_screen.dart';
import 'package:demo/src/screen/profile/profile_screen.dart';
import 'package:demo/src/screen/sign_in/sign_in_screen.dart';
import 'package:demo/src/screen/sign_up/sign_up_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  onBoardingScreen.routeName: (context) => onBoardingScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  categoriesScreen.routeName: (context) => categoriesScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  OrderScreen.routeName: (context) => OrderScreen(),
};
