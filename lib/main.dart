import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/routers/routes.dart';
import 'package:flutter_starter/services/application.dart';
import 'package:flutter_starter/services/http.dart';
import 'package:flutter_starter/widgets/entrance/index.dart';

// 必须顶层，以防性能损耗
//parseJson(String text) {
//  return compute(jsonDecode, text);
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp() {
    final router = new Router();
    final http = new Http();
    Routes.configureRoutes(router);
    Application.router = router;
//    (http.dio.transformer as DefaultTransformer).jsonDecodeCallback = parseJson;
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
