import 'package:provide/provide.dart';
import 'package:flutter/material.dart';
import '../config/index.dart';
import 'cart_page.dart';
import 'categroy_page.dart';
import 'home_page.dart';
import 'person_page.dart';
import '../provide/current_index_provide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndexPage extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home), title: Text(KeyString.homeTitle)),
    BottomNavigationBarItem(
        icon: Icon(Icons.category), title: Text(KeyString.categoryTitle)),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        title: Text(KeyString.shoppingCartTitle)),
    BottomNavigationBarItem(
        icon: Icon(Icons.person), title: Text(KeyString.personTitle)),
  ];

  final List<Widget> tabBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    PersonPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ScreenUtil.instance = ScreenUtil(width: 750,height: 1334)..init(context);   //屏幕的适配
    return Provide<CurrentIndexProvide>(
      builder: (context, child, val) {
        //获取当前索引状态值
        int currentIndex = Provide.value<CurrentIndexProvide>(context).currentIndex;
        return Scaffold(
          backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            items: bottomTabs,
            onTap: (index) {   //切换导航栏
              Provide.value<CurrentIndexProvide>(context).changeIndex(index);
            },
          ),
          body: IndexedStack(
            index: currentIndex,
            children: tabBodies,
          ),
        );
      },
    );
  }
}
