import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starter/screens/category_screen.dart';
import 'package:flutter_starter/screens/home_screen.dart';
import 'package:flutter_starter/screens/user_center_screen.dart';
import 'package:flutter_starter/stores/entrance/entrance_store.dart';
import 'package:flutter_starter/widgets/app_bar/category_app_bar.dart';
import 'package:flutter_starter/widgets/app_bar/home_app_bar.dart';
import 'package:flutter_starter/widgets/app_bar/user_center_app_bar.dart';

class _EntranceState extends State<EntranceIndex> {
  List<Widget> _appBars = [HomeAppBar(), CategoryAppBar(), UserCenterAppBar()];
  List<Widget> _screens = [HomeScreen(), CategoryScreen(), UserCenterScreen()];
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

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
            appBar: PreferredSize(
              child: _appBars[entranceStore.index],
              preferredSize: Size.fromHeight(44.0),
            ),
            body: IndexedStack(
              index: entranceStore.index,
              children: _screens,
            ),
            bottomNavigationBar: CupertinoTabBar(
              items: _navItems,
              currentIndex: entranceStore.index,
              onTap: entranceStore.onTap,
            ),
          ),
    );
  }
}

class EntranceIndex extends StatefulWidget {
  @override
  _EntranceState createState() => _EntranceState();
}
