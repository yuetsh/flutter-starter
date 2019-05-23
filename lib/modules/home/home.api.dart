import 'package:flutter_starter/utils/service.dart';

import 'home.dart';

class HomeAPI {
  static Future<Home> getHomeData() async {
    final resp =
        await Service.http.get('https://jsonplaceholder.typicode.com/todos/1');
    return Home.fromJson(resp.data);
  }
}
