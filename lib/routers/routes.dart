import 'package:fluro/fluro.dart';
import 'package:flutter_starter/routers/route_handlers.dart';

class Routes {
  static String home = "/";
  static String category = "/category";

  static void configureRoutes(Router router) {
    router.define(home, handler: homeHandler);
    router.define(category, handler: categoryHandler);
  }
}
