import 'package:mobx/mobx.dart';

import 'home.api.dart';
import 'home.dart';

part 'home.store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

final HomeStore homeStore = HomeStore();

abstract class _HomeStore implements Store {
  @observable
  Home data = Home();

  get title {
    return this.data.title;
  }

  @action
  Future<void> getData() async {
    this.data = await HomeAPI.getHomeData();
  }
}
