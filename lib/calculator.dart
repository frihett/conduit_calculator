import 'package:conduit_calculator/input_parser.dart';
import 'package:conduit_calculator/operation_factory.dart';

class Calculator {
  final inputParser = InputParser();

  double calculate(String input) {
    final parts = inputParser.parse(input);

    final double operand1 = double.parse(parts[0]);
    final String operator = parts[1];
    final double operand2 = double.parse(parts[2]);

    final operation =  OperationFactory.getOperation(operator);
    return operation.calculate(operand1, operand2);
  }
}
