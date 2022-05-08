import 'package:demo/src/screen/categories/categories_screen.dart';
import 'package:demo/src/screen/construction/construction_screen.dart';
import 'package:demo/src/screen/customer/customer_screen.dart';
import 'package:demo/src/screen/listpayment/list_payment_screen.dart';
import 'package:demo/src/screen/notification/notification_screen.dart';
import 'package:demo/src/screen/onboarding/onboarding_screen.dart';
import 'package:demo/src/screen/order_in_progress/order_screen.dart';
import 'package:demo/src/screen/payment/payment_screen.dart';
import 'package:demo/src/screen/profile/components/navbar/pages/home.dart';
import 'package:demo/src/screen/profile/profile_screen.dart';
import 'package:demo/src/screen/services/service_screen.dart';
import 'package:demo/src/screen/setting/setting_screen.dart';
import 'package:demo/src/screen/sign_in/sign_in_screen.dart';
import 'package:demo/src/screen/sign_up/sign_up_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  onBoardingScreen.routeName: (context) => const onBoardingScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  categoriesScreen.routeName: (context) => const categoriesScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  NotificationScreen.routeName: (context) => const NotificationScreen(),
  OrderScreen.routeName: (context) => const OrderScreen(),
  Home.routeName: (context) => const Home(),
  SettingScreen.routeName: (context) => const SettingScreen(),
  ListPaymentScreen.routeName: (context) => const ListPaymentScreen(),
  PaymentScreen.routeName: (context) => const PaymentScreen(),
  ServiceScreen.routeName: (context) => const ServiceScreen(),
  CustomerScreen.routeName: (context) => const CustomerScreen(),
  ConstructionScreen.routeName: (context) => const ConstructionScreen(),
};
