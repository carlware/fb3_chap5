import 'package:flutter_test/flutter_test.dart';
import 'package:fb3_chap5/calculator.dart';

void main() {
  late Calculator _calculator;

  setUp(() {
    _calculator = Calculator();
  });

  test(
    'calculator.sumTwoNumbers() sum both numbers',
        () => expect(_calculator.sumTwoNumber(1, 2), 3),
  );
}