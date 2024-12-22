abstract class BinaryOperation {
  double calculate(double operand1, double operand2);
}

class Addition implements BinaryOperation {
  @override
  double calculate(double operand1, double operand2) => operand1 + operand2;
}

class Subtraction implements BinaryOperation {
  @override
  double calculate(double operand1, double operand2) => operand1 - operand2;
}

class Multiplication implements BinaryOperation {
  @override
  double calculate(double operand1, double operand2) => operand1 * operand2;
}

class Division implements BinaryOperation {
  @override
  double calculate(double operand1, double operand2) {
    if (operand2 == 0) {
      throw ArgumentError('0으로 나눌 수 없습니다.');
    }
    return operand1 / operand2;
  }
}