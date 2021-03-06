import 'package:fluro/fluro.dart';

import 'route_handlers.dart';

class Routes {
  static String home = "/";
  static String settings = "/settings";
  static String activity = "/activity/:id";

  static void configureRoutes(Router router) {
    router.define(home, handler: homeHandler);
    router.define(settings,
        handler: settingsHandler, transitionType: TransitionType.inFromRight);
  }
}
