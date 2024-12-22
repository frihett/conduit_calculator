class Calculator {
  double calculate(String input) {
    final parts = input.split(' ');

    if (parts.length != 3) {
      throw FormatException('연산자 피연산자 연산자 형식을 맞춰주세요');
    }


    final double operand1 = double.parse(parts[0]);
    final String operator = parts[1];
    final double operand2 = double.parse(parts[2]);

    switch (operator) {
      case '+':
        return operand1 + operand2;
      case '-':
        return operand1 - operand2;
      case '*':
        return operand1 * operand2;
      case '/':
        if (operand2 == 0) {
          throw ArgumentError('0으로 나눌수 없습니다.');
        }
        return operand1 / operand2;
      default:
        throw FormatException('지원하지 않는 연산자입니다 : $operator');
    }
  }
}