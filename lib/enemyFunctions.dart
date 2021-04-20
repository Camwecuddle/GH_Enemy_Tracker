import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

Future<String> loadJsonData() async {
  var jsonText = await rootBundle.loadString('assets/enemyData.json');
  print('JSONTEXT');
  print(jsonText);
  return jsonText;
  // return jsonDecode(jsonText);
}

Future getNamesFromJson() async {
  print('GETNAMES');
  var jsonText = await rootBundle.loadString('assets/enemyData.json');
  print('GOTNAMES');
  var jsonEnemyData = await jsonDecode(jsonText);
  var parsedEnemyData = jsonEnemyData['smallMonstersList'];
  var enemyNames = [];
  print('DECODED');
  parsedEnemyData.forEach((element) {
    (element as Map<String, dynamic>).forEach((key, value) {
      enemyNames.add(key);
    });
  });

  print('ENEMYNAMES');
  print(enemyNames);
  return enemyNames;
}
