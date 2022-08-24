import 'dart:convert';

import '../model.dart';
import 'package:http/http.dart' as http;

class DataFromJson {
  final uri =
      Uri.parse('https://run.mocky.io/v3/8754cf28-a667-4e88-99ea-e46f09217d41');

  Medicinmodel obj = Medicinmodel();
  getData() async {
    final responce = await http.get(uri);
    var json = jsonDecode(responce.body);
    obj = Medicinmodel.fromJson(json);
    // print(obj.problems.toString());
  }
}
