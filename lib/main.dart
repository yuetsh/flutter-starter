import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/service.dart';
import 'package:flutter_starter/widgets/shared/entrance/index.dart';

void mainDelegate() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EntranceIndex(),
      onGenerateRoute: Service.router.generator,
    );
  }
}
