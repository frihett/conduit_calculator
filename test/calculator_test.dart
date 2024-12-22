import 'package:conduit_calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  final calculator = Calculator();

  group('계산 작업', () {
    test('더하기 테스트', () {
      expect(calculator.calculate('3 + 2'), 5);
    });

    test('빼기 테스트', () {
      expect(calculator.calculate('5 - 3'), 2);
    });

    test('곱하기 테스트', () {
      expect(calculator.calculate('4 * 2'), 8);
    });

    test('나누기 테스트', () {
      expect(calculator.calculate('20 / 4'), 5);
    });

    test('나누기 에러 테스트', () {
      expect(
        () => calculator.calculate('20 / 0'),
        throwsArgumentError,
      );
    });

    test('천 단위 구분자 예외 테스트', () {
      expect(
        () => calculator.calculate('1,000 + 2'),
        throwsFormatException,
      );
    });

    test('입력 형식 예외 테스트 (공백)', () {
      expect(
        () => calculator.calculate('3 +'),
        throwsFormatException,
      );
    });
    test('입력 형식 예외 테스트 (숫자 외)', () {
      expect(
        () => calculator.calculate('b + a'),
        throwsFormatException,
      );
    });
    test('입력 형식 예외 테스트 (초과 연산)', () {
      expect(
        () => calculator.calculate('3 + 3 + 6'),
        throwsFormatException,
      );
    });
  });
}
