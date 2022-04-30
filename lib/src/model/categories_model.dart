import 'package:flutter/material.dart';

class Category {
  String image;
  String text;
  IconData icon;
  Category({required this.image, required this.text, required this.icon});
}

List<Category> categories = [
  Category(
      image: 'assets/images/furniture_icon.png',
      text: 'furniture works',
      icon: Icons.arrow_forward_ios),
  Category(
      image: 'assets/images/cleaning_icon.png',
      text: 'Cleaning service',
      icon: Icons.arrow_forward_ios),
  Category(
      image: 'assets/images/equipment_icon.png',
      text: 'Equipment repair',
      icon: Icons.arrow_forward_ios),
  Category(
      image: 'assets/images/courier_icon.png',
      text: 'Courier service',
      icon: Icons.arrow_forward_ios),
  Category(
      image: 'assets/images/interiro_icon.png',
      text: 'Interior design',
      icon: Icons.arrow_forward_ios),
];
