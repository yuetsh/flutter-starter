import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starter/stores/entrance/entrance.store.dart';
import 'package:flutter_starter/widgets//category/index.dart';
import 'package:flutter_starter/widgets/home/index.dart';
import 'package:flutter_starter/widgets/nav_bar/category.dart';
import 'package:flutter_starter/widgets/nav_bar/home.dart';
import 'package:flutter_starter/widgets/nav_bar/user_center.dart';
import 'package:flutter_starter/widgets/user_center/index.dart';

class _EntranceState extends State<EntranceIndex> {
  List<Widget> _navBars = [HomeNavBar(), CategoryNavBar(), UserCenterNavBar()];
  List<Widget> _screens = [HomeIndex(), CategoryIndex(), UserCenterIndex()];
  List<BottomNavigationBarItem> _navItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category),
      title: Text('分类'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text('个人'),
    ),
  ];

  Widget builder(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: _navItems,
        onTap: entranceStore.onTap,
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              child: _screens[entranceStore.index],
              navigationBar: _navBars[entranceStore.index],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) => Observer(builder: builder);
}

class EntranceIndex extends StatefulWidget {
  @override
  _EntranceState createState() => _EntranceState();
}
