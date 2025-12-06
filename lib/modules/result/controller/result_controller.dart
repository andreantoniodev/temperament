import 'package:mobx/mobx.dart';

import '../../../core/constants/temperaments/temperaments.dart';
import '../../../core/services/services.dart';

part 'result_controller.g.dart';

class ResultController = _ResultController with _$ResultController;

abstract class _ResultController with Store {
  @observable
  String result = '';

  @observable
  Map<String, String> detail = {};

  @action
  dynamic readTemperament() {
    result = localStorage.read<dynamic>(KeysStorage.temperament) as String? ?? '';
    return _checkResult();
  }

  String getTemperamentDescription() {
    switch (result) {
      case 'Sanguíneo':
        return Temperaments.sanguineo.values.first;
      case 'Fleumático':
        return Temperaments.fleumatico.values.first;
      case 'Colérico':
        return Temperaments.colerico.values.first;
      case 'Melancólico':
        return Temperaments.melancolico.values.first;
      default:
        return '';
    }
  }

  Map<String, String> _checkResult() {
    switch (result) {
      case 'Sanguíneo':
        return detail = Temperaments.sanguineoMap;
      case 'Fleumático':
        return detail = Temperaments.fleumaticoMap;
      case 'Colérico':
        return detail = Temperaments.colericoMap;
      case 'Melancólico':
        return detail = Temperaments.melancolicoMap;
      default:
        return detail = {};
    }
  }

  @action
  void clearTemperament() {
    result = '';
    detail = {};
    return localStorage.remove(KeysStorage.temperament);
  }
}
