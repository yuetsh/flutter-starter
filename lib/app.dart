import 'package:fluro/fluro.dart';
import 'package:flutter_starter/config/config.dart';
import 'package:flutter_starter/utils/http.dart';
import 'package:flutter_starter/utils/log.dart';
import 'package:flutter_starter/utils/routes.dart';
import 'package:flutter_starter/utils/service.dart';
import 'package:logging/logging.dart';

class App {
  onCreate() {
    _initRouter();
    _initHttp();
    _initLog();
  }

  onDestroy() {}

  _initRouter() {
    final router = Router();
    Routes.configureRoutes(router);
    Service.router = router;
  }

  _initLog() {
    Log.init();
    if (Config.value.envType == EnvType.PRODUCTION) {
      Log.setLevel(Level.INFO);
    } else {
      Log.setLevel(Level.ALL);
    }
  }

  _initHttp() {
    final http = new Http();
    Service.http = http.dio;
  }
}
