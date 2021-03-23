// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<int>? _$sumComputed;

  @override
  int get sum => (_$sumComputed ??=
          Computed<int>(() => super.sum, name: '_HomeControllerBase.sum'))
      .value;

  final _$value1Atom = Atom(name: '_HomeControllerBase.value1');

  @override
  int get value1 {
    _$value1Atom.reportRead();
    return super.value1;
  }

  @override
  set value1(int value) {
    _$value1Atom.reportWrite(value, super.value1, () {
      super.value1 = value;
    });
  }

  final _$value2Atom = Atom(name: '_HomeControllerBase.value2');

  @override
  int get value2 {
    _$value2Atom.reportRead();
    return super.value2;
  }

  @override
  set value2(int value) {
    _$value2Atom.reportWrite(value, super.value2, () {
      super.value2 = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void incrementValue1() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.incrementValue1');
    try {
      return super.incrementValue1();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementValue2() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.incrementValue2');
    try {
      return super.incrementValue2();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value1: ${value1},
value2: ${value2},
sum: ${sum}
    ''';
  }
}
