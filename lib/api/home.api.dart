import 'package:flutter_starter/model/home/home.dart';
import 'package:flutter_starter/services/application.dart';

class HomeAPI {
  static getHomeData() async {
    final resp = await Application.http
        .get('https://jsonplaceholder.typicode.com/todos/1');
    return Home.fromJson(resp.data);
  }
}
