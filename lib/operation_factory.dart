import 'package:conduit_calculator/binary_operation.dart';
import 'package:conduit_calculator/unary_operation.dart';

class OperationFactory {
  static BinaryOperation getBinaryOperation(String operator) {
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

  static UnaryOperation getUnaryOperation(String operator) {
    switch (operator) {
      default:
        throw FormatException('지원하지 않는 연산자입니다: $operator');
    }
  }
}
