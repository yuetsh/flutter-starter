import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/application.dart';
import 'package:flutter_starter/utils/http.dart';
import 'package:flutter_starter/utils/routes.dart';
import 'package:flutter_starter/widgets/shared/entrance/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp() {
    final router = new Router();
    final http = new Http();
    Routes.configureRoutes(router);
    Application.router = router;
    Application.http = http.dio;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EntranceIndex(),
      onGenerateRoute: Application.router.generator,
    );
  }
}
