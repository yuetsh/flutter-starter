import 'package:flutter/material.dart';

class UserCenterAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("个人中心"),
      centerTitle: true,
    );
  }
}
