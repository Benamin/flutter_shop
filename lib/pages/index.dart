import 'package:provide/provide.dart';
import 'package:flutter/material.dart';
import '../config/index.dart';

class IndexPage extends StatelessWidget{
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title:Text(KeyString.homeTitle)
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.category),
        title:Text(KeyString.categoryTitle)
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        title:Text(KeyString.shoppingCartTitle)
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title:Text(KeyString.personTitle)
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}