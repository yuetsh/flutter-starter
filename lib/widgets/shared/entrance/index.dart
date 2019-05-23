import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starter/modules/entrance/entrance.store.dart';
import 'package:flutter_starter/widgets//category/index.dart';
import 'package:flutter_starter/widgets/home/index.dart';
import 'package:flutter_starter/widgets/user_center/index.dart';

import 'nav_bar/category.dart';
import 'nav_bar/home.dart';
import 'nav_bar/user_center.dart';

class _EntranceState extends State<EntranceIndex> {
  List<Widget> _navBars = [HomeNavBar(), CategoryNavBar(), UserCenterNavBar()];
  List<Widget> _screens = [HomeIndex(), CategoryIndex(), UserCenterIndex()];
  List<BottomNavigationBarItem> _navItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: const Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category),
      title: const Text('分类'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: const Text('个人'),
    ),
  ];

  Widget builder(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        items: _navItems,
        currentIndex: entranceStore.index,
        onTap: entranceStore.onTap,
      ),
      appBar: PreferredSize(
        child: _navBars[entranceStore.index],
        preferredSize: Size.fromHeight(44.0),
      ),
      body: IndexedStack(
        index: entranceStore.index,
        children: _screens,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Observer(builder: builder);
}

class EntranceIndex extends StatefulWidget {
  @override
  _EntranceState createState() => _EntranceState();
}
