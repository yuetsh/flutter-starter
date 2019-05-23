import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: const Text("分类页"),
    );
  }
}
