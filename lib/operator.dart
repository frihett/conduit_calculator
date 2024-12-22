class Operator {
  double add(String input) {
    final operands = _parseInput(input);
    return operands[0] + operands[1];
  }

  double minus(String input) {
    final operands = _parseInput(input);
    return operands[0] - operands[1];
  }

  double multiply(String input) {
    final operands = _parseInput(input);
    return operands[0] * operands[1];
  }

  double divide(String input) {
    final operands = _parseInput(input);
    if (operands[1] == 0) {
      throw ArgumentError('0으로 나눌 수 없습니다.');
    }
    return operands[0] / operands[1];
  }

  static List<double> _parseInput(String input) {
    final parts = input.split(' ');
    if (parts.length != 3) {
      throw FormatException(
          '피연산자 연산자 피연산자 형식을 맞춰주세요');
    }

    try {
      final operand1 = double.parse(parts[0]);
      final operator = parts[1];
      final operand2 = double.parse(parts[2]);
      return [operand1, operand2];
    } catch (e) {
      throw FormatException('Invalid number format in input: $input');
    }
  }
}
