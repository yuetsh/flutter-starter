import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starter/config/config.dart';
import 'package:flutter_starter/modules/entrance/entrance.store.dart';
import 'package:flutter_starter/modules/home/home.store.dart';
import 'package:flutter_starter/utils/routes.dart';
import 'package:flutter_starter/utils/service.dart';

class HomeIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('首页:${Config.value.envType}'),
          CupertinoButton(
            child: const Text("去分类页"),
            onPressed: () {
              entranceStore.onTap(1);
            },
          ),
          CupertinoButton(
            child: const Text('获取数据'),
            onPressed: homeStore.getData,
          ),
          Observer(
            builder: (_) => Text(
                  homeStore.data.title,
                  style: TextStyle(fontSize: 24),
                ),
          ),
          CupertinoButton(
            child: const Text('去设置页'),
            onPressed: () {
              Service.router.navigateTo(context, Routes.settings);
            },
          )
        ],
      ),
    );
  }
}
