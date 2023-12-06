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
