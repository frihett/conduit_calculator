import 'package:conduit_calculator/operation.dart';

class OperationFactory {
  static Operation getOperation(String operator) {
    switch (operator) {
      case '+':
        return Addition();
      case '-':
        return Subtraction();
      case '*':
        return Multiplication();
      case '/':
        return Division();
      default:
        throw FormatException('지원하지 않는 연산자입니다: $operator');
    }
  }
}
