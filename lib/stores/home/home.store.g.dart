// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$HomeStore on _HomeStore, Store {
  final _$dataAtom = Atom(name: '_HomeStore.data');

  @override
  Home get data {
    _$dataAtom.reportObserved();
    return super.data;
  }

  @override
  set data(Home value) {
    _$dataAtom.context.checkIfStateModificationsAreAllowed(_$dataAtom);
    super.data = value;
    _$dataAtom.reportChanged();
  }

  final _$getDataAsyncAction = AsyncAction('getData');

  @override
  Future<void> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }
}
