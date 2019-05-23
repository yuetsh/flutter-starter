import 'package:mobx/mobx.dart';

import 'home.api.dart';
import 'home.model.dart';

part 'home.store.g.dart';

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
