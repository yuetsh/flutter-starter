import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text("设置"),
      ),
      body: Center(
        child: const Text("设置"),
      ),
    );
  }
}
