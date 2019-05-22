import 'package:flutter_starter/api/home.dart';
import 'package:flutter_starter/model/home/home.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

final homeStore = HomeStore();

abstract class _HomeStore implements Store {
  @observable
  Home data = Home();

  @action
  Future<void> getData() async {
    this.data = await HomeAPI.getHomeData();
  }
}
