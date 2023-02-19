import 'dart:math';

class GenerateNumber {
  static Random random = Random();
  final String _number = '1234567890';
  static List<String> datanim = [];

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _number.codeUnitAt(random.nextInt(_number.length))));

  void generated() {
    for (int i = 0; i <= 500; i++) {
      datanim.add(getRandomString(9));
    }
  }

  void main() {
    GenerateNumber obj = GenerateNumber();
    obj.generated();
  }
}
