import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starter/modules/home/home.store.dart';

class SettingsIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text("设置页"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text("设置页"),
            Observer(
              builder: (_) => Text(homeStore.title),
            )
          ],
        ),
      ),
    );
  }
}
