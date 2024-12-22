// abstract class Operation {
//   double calculate(double operand1, double operand2);
// }
//
// class Addition implements Operation {
//   @override
//   double calculate(double operand1, double operand2) => operand1 + operand2;
// }
//
// class Subtraction implements Operation {
//   @override
//   double calculate(double operand1, double operand2) => operand1 - operand2;
// }
//
// class Multiplication implements Operation {
//   @override
//   double calculate(double operand1, double operand2) => operand1 * operand2;
// }
//
// class Division implements Operation {
//   @override
//   double calculate(double operand1, double operand2) {
//     if (operand2 == 0) {
//       throw ArgumentError('0으로 나눌 수 없습니다.');
//     }
//     return operand1 / operand2;
//   }
// }
