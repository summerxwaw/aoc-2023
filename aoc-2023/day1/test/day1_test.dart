import 'package:day1/day1.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    final testList = [
      '1abc2',
      'pqr3stu8vwx',
      'a1b2c3d4e5f',
      'treb7uchet',
    ];

    expect(getSize(testList), 142);
  });
  test('getValueTaskTwo', () {
    final testList = [
      'two1nine',
      'eightwothree',
      'abcone2threexyz',
      'xtwone3four',
      '4nineeightseven2',
      'zoneight234',
      '7pqrstsixteen',
    ];

    expect(getValueTaskTwo(testList), 281);
  });
}
