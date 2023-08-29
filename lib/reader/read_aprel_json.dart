import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:eventssurgu/reader/aprel_model_json.dart';

class ReaderJsonAprelAprel {
  late List<Event> items;

  Future<List<Event>> getAprel() async {
    final String responce = await rootBundle.loadString('assets/aprel.json');
    final data = await jsonDecode(responce);

    AprelModelJson aprel = AprelModelJson.fromJson(data);
    return aprel.items as List<Event>;
  }
}
