import 'dart:io';

import 'package:day1/day1.dart' as day1;
import 'package:path/path.dart' as p;

Future<void> main(List<String> arguments) async {
  var filePath = p.join(Directory.current.path, 'assets', 'data.txt');
  final file = File(filePath).readAsStringSync();

  day1.getSize(file.split(String.fromCharCode(10)));
}
