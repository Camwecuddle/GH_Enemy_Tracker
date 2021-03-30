import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

Future<String> loadJsonData() async {
  var jsonText = await rootBundle.loadString('assets/enemyData.json');
  return jsonText;
  // return jsonDecode(jsonText);
}
