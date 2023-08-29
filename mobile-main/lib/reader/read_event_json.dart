import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:eventssurgu/reader/event_model_json.dart';

class ReaderJson {
  late List<Item> items;

  Future<List<Item>> getEvent() async {
    final String responce =
        await rootBundle.loadString('assets/description.json');
    final data = await jsonDecode(responce);

    EventsModelJson events = EventsModelJson.fromJson(data);
    return events.items as List<Item>;
  }
}
