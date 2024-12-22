class InputParser {
  List<String> parse(String input) {
    final parts = input.split(' ');

    if (parts.length != 3) {
      throw FormatException('피연산자 연산자 피연산자 형식을 맞춰주세요');
    }

    if (parts.any((part) => part.contains(','))) {
      throw FormatException('천 단위 구분자는 허용되지 않습니다.');
    }

    return parts;
  }
}
