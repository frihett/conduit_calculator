import 'package:conduit_calculator/calculator.dart';
import 'package:conduit_calculator/input_parser.dart';

void main(List<String> args) {
  final calculator = Calculator(InputParser());
  final result = calculator.calculate(args[0]);

  print('결과: $result');
}

