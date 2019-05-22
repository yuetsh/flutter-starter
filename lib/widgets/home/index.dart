import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starter/stores/entrance/entrance_store.dart';
import 'package:flutter_starter/stores/home/home_store.dart';

class HomeIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('首页'),
          CupertinoButton(
            child: Text('去分类页'),
            onPressed: () {
              entranceStore.onTap(1);
            },
          ),
          CupertinoButton(
            child: Text('获取数据'),
            onPressed: homeStore.getData,
          ),
          Observer(
              builder: (_) => Text(
                    homeStore.data.title,
                    style: TextStyle(fontSize: 24),
                  )),
        ],
      ),
    );
  }
}
