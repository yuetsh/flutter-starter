import 'package:flutter_starter/utils/application.dart';

import 'home.model.dart';

class HomeAPI {
  static getHomeData() async {
    final resp = await Application.http
        .get('https://jsonplaceholder.typicode.com/todos/1');
    return Home.fromJson(resp.data);
  }
}
