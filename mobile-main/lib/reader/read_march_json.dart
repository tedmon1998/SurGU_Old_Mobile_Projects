import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:eventssurgu/reader/march_model_json.dart';

class ReaderJson {
  late List<Item> items;

  Future<List<Item>> getMarch() async {
    final String responce = await rootBundle.loadString('assets/march.json');
    final data = await jsonDecode(responce);

    MarchModelJson march = MarchModelJson.fromJson(data);
    return march.items as List<Item>;
  }
}
