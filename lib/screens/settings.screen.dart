import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/settings/index.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("设置"),
          centerTitle: true,
          elevation: 0,
        ),
        body: SettingsIndex(),
      );
}
