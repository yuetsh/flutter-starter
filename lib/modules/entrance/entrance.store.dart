import 'package:mobx/mobx.dart';

part 'entrance.store.g.dart';

class EntranceStore = _EntranceStore with _$EntranceStore;

final entranceStore = EntranceStore();

abstract class _EntranceStore implements Store {
  @observable
  int index = 0;

  @action
  void onTap(int index) {
    this.index = index;
  }
}
