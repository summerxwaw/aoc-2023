int getSize(List<String> list) {
  int result = 0;

  for (final e in list) {
    List<int> wordNumbers = [];

    e.split('').forEach((letter) {
      final number = int.tryParse(letter);
      if (number != null) {
        wordNumbers.add(number);
      }
    });

    result += int.parse('${wordNumbers.first}${wordNumbers.last}');
  }

  return result;
}

final regexpTask2 =
    RegExp(r'(?=(\d|one|two|three|four|five|six|seven|eight|nine))');
Map<String, String> numMap = {
  'one': '1',
  'two': '2',
  'three': ' 3',
  'four': ' 4',
  'five': ' 5',
  'six': ' 6',
  'seven': ' 7',
  'eight': ' 8',
  'nine': ' 9',
};

int getValueTaskTwo(List<String> list) {
  int result = 0;

  for (final e in list) {
    final numbers = <String>[];
    final str = regexpTask2.allMatches(e);
    final firstNumber = str.first.group(1);
    final secondNumber = str.last.group(1);

    numbers.addAll([
      _getValue(firstNumber),
      _getValue(secondNumber),
    ]);

    result += int.parse('${numbers.first}${numbers.last}'.replaceAll(' ', ''));
  }
  return result;
}

String _getValue(String? number) {
  if (number != null && int.tryParse(number) != null) {
    return number;
  } else {
    return numMap[number] ?? '';
  }
}
