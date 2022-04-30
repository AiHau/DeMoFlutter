import 'dart:ui';

import 'package:demo/components/stateful/button_categories.dart';
import 'package:demo/components/stateful/item_categories.dart';
import 'package:demo/src/model/categories_model.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class categoriesScreen extends StatefulWidget {
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
        leading: const Icon(Icons.arrow_back_ios),
        title: Center(child: item(name: 'Categories')),
        actions: const [Icon(Icons.menu)],
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
          _searchByCategories(),
          Expanded(child: _listCategories()),
          _buttonCategories(),
        ],
      ),
    ));
  }

  Widget _searchByCategories() {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
      color: Color(0xffededed),
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
    return Text('$name');
  }

  Widget _buttonCategories() {
    return Row(
      children: [
        Expanded(
            child: Container(
          // padding: EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 5.0),
          child: buttonCategories(text: 'Back', color: 0xffC0C0C0),
          color: const Color(0xffffffff),
        )),
        Expanded(
            child: Container(
          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
          child: buttonCategories(text: 'Next', color: 0xffFFFFFF),
        )),
      ],
    );
  }
}
