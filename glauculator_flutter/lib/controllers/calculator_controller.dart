import 'package:expressions/expressions.dart';

class CalculatorController {
  var expression = "0";

  var _result;
  add(String text) {
    if (expression == "0" && text == "0" || expression == "0")
      expression = "$text";
    else
      expression = "$expression$text";
  }

  calculate() {
    try {
      print(expression);
      var exp = Expression.parse(expression);
      
      final evaluator = const ExpressionEvaluator();
      _result = evaluator.eval(exp, null);
      expression = _result.toString();
    } catch (e) {
      expression = "Deu treta meu parcero";
      print(e.toString());
    }
  }

  clear() {
    expression = "0";
  }

  removeLastCharacter() {
    if (expression.length > 0)
      expression = expression.substring(0, expression.length - 1);
  }
}
