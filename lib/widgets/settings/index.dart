import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text("设置"),
      ),
      body: Center(
        child: Text("设置"),
      ),
    );
  }
}
