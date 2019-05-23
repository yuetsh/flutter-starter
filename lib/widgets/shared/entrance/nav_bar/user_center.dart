import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserCenterNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: const Text("个人中心"),
    );
  }
}
