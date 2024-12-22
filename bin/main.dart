import 'package:conduit_calculator/calculator.dart';

void main(List<String> args) {
  final calculator = Calculator();
  final result = calculator.calculate(args[0]);

  print('결과: $result');
}

