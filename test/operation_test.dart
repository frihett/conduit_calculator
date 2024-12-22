import 'package:conduit_calculator/binary_operation.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('연산자 테스트', () {
    test('덧셈 연산 테스트', () {
      final binaryOperation = Addition();
      expect(binaryOperation.calculate(2, 3), 5);
    });

    test('뺄셈 연산 테스트', () {
      final binaryOperation = Subtraction();
      expect(binaryOperation.calculate(5, 2), 3);
    });

    test('곱셈 연산 테스트', () {
      final binaryOperation = Multiplication();
      expect(binaryOperation.calculate(3, 4), 12);
    });

    test('나눗셈 연산 테스트', () {
      final binaryOperation = Division();
      expect(binaryOperation.calculate(10, 2), 5);
    });
  });
}
