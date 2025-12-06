// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ResultController on _ResultController, Store {
  late final _$resultAtom = Atom(name: '_ResultController.result', context: context);

  @override
  String get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  late final _$detailAtom = Atom(name: '_ResultController.detail', context: context);

  @override
  Map<String, String> get detail {
    _$detailAtom.reportRead();
    return super.detail;
  }

  @override
  set detail(Map<String, String> value) {
    _$detailAtom.reportWrite(value, super.detail, () {
      super.detail = value;
    });
  }

  late final _$_ResultControllerActionController = ActionController(name: '_ResultController', context: context);

  @override
  dynamic readTemperament() {
    final _$actionInfo = _$_ResultControllerActionController.startAction(name: '_ResultController.readTemperament');
    try {
      return super.readTemperament();
    } finally {
      _$_ResultControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearTemperament() {
    final _$actionInfo = _$_ResultControllerActionController.startAction(
      name: '_ResultController.clearTemperament',
    );
    try {
      return super.clearTemperament();
    } finally {
      _$_ResultControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
result: ${result},
detail: ${detail}
    ''';
  }
}
