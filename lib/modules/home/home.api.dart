import 'package:flutter_starter/utils/application.dart';

import 'home.dart';

class HomeAPI {
  static Future<Home> getHomeData() async {
    final resp = await Application.http
        .get('https://jsonplaceholder.typicode.com/todos/1');
    return Home.fromJson(resp.data);
  }
}
