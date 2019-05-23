// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entrance.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$EntranceStore on _EntranceStore, Store {
  final _$indexAtom = Atom(name: '_EntranceStore.index');

  @override
  int get index {
    _$indexAtom.reportObserved();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.context.checkIfStateModificationsAreAllowed(_$indexAtom);
    super.index = value;
    _$indexAtom.reportChanged();
  }

  final _$_EntranceStoreActionController =
      ActionController(name: '_EntranceStore');

  @override
  void onTap(int index) {
    final _$actionInfo = _$_EntranceStoreActionController.startAction();
    try {
      return super.onTap(index);
    } finally {
      _$_EntranceStoreActionController.endAction(_$actionInfo);
    }
  }
}
