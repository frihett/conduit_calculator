import 'package:conduit_calculator/input_parser.dart';
import 'package:conduit_calculator/operation_factory.dart';

class Calculator {
  final inputParser = InputParser();

  double calculate(String input) {
    final parts = inputParser.parse(input);

    if (parts.length == 3) {
      final double operand1 = double.parse(parts[0]);
      final String operator = parts[1];
      final double operand2 = double.parse(parts[2]);

      final operation = OperationFactory.getBinaryOperation(operator);
      return operation.calculate(operand1, operand2);
    }
    if (parts.length == 2) {
      final operator = parts[0];
      final double operand = double.parse(parts[1]);
      final operation = OperationFactory.getUnaryOperation(operator);
      return operation.calculate(operand);
    } else {
      throw FormatException('지원하지 않는 입력 형식입니다.');
    }
  }
}
