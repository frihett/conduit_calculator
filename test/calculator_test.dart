import 'package:test/test.dart';

void main() {
  group('계산 작업', () {
    test('더하기 테스트', () {
      expect(Operator.add('3 + 2'), 5);
    });

    test('빼기 테스트', () {
      expect(Operator.minus('5 - 3'), 2);
    });

    test('곱하기 테스트', () {
      expect(Operator.multiply('4 * 2'), 8);
    });

    test('나누기', () {
      expect(Operator.divide('20 / 4'), 5);
    });
  });
}
