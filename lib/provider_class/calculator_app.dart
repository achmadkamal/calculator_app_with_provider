import 'package:flutter/foundation.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp with ChangeNotifier {
  int _currentIndex = 0;
  String historyInput = '';
  String valueInput = '';

  int get currentIndex => _currentIndex;
  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void allClear(String newVaue) {
    historyInput = '';
    valueInput = '';
    notifyListeners();
  }

  void clear(String newValue) {
    valueInput = '';
    notifyListeners();
  }

  void buttonPressed(String newValue) {
    valueInput += newValue;
    notifyListeners();
  }

  void calculate(String newValue) {
    Parser parser = Parser();
    Expression expression = parser.parse(valueInput);
    ContextModel contextModel = ContextModel();

    historyInput = valueInput;
    valueInput =
        expression.evaluate(EvaluationType.REAL, contextModel).toString();
    notifyListeners();
  }
}
