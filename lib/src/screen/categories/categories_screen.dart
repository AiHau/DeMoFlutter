import 'package:demo/components/stateful/button_categories.dart';
import 'package:demo/components/stateful/item_categories.dart';
import 'package:demo/src/model/categories_model.dart';
import 'package:demo/src/screen/profile/profile_screen.dart';
import 'package:demo/src/screen/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class categoriesScreen extends StatefulWidget {
  static String routeName = "/categories";
  const categoriesScreen({Key? key}) : super(key: key);

  @override
  State<categoriesScreen> createState() => _categoriesScreenState();
}

// ignore: camel_case_types
class _categoriesScreenState extends State<categoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: const Center(
            child: Text(
          "Categories",
          style: TextStyle(color: Color.fromARGB(255, 54, 53, 53)),
        )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.menu,
            ),
          )
        ],
      ),
      body: _categoriesBody(),
    );
  }

  Widget _categoriesBody() {
    return Center(
        child: Container(
      padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10.0),
          _searchByCategories(),
          const SizedBox(height: 20.0),
          Expanded(child: _listCategories()),
          _buttonCategories(),
        ],
      ),
    ));
  }

  Widget _searchByCategories() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
      color: const Color(0xffededed),
      height: 60,
      child: Row(
        children: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Text('Search by categories',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey))
        ],
      ),
    );
  }

  Widget _listCategories() {
    return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (_, index) => itemCategories(
            images: categories[index].image,
            text: categories[index].text,
            icon: categories[index].icon));
  }

  Widget item({required String name}) {
    return Text(name);
  }

  Widget _buttonCategories() {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: const EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 5.0),
          child: buttonCategories(
              text: 'Back',
              color: 0xffFFFFFF,
              colorText: 0xffC0C0C0,
              press: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              }),
        )),
        Expanded(
            child: Container(
          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
          child: buttonCategories(
              text: 'Next',
              color: 0xff20C3AF,
              colorText: 0xffFFFFFF,
              press: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              }),
        )),
      ],
    );
  }
}
