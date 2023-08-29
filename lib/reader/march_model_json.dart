import 'dart:convert';

MarchModelJson marchFromJson(String str) =>
    MarchModelJson.fromJson(json.decode(str));

class MarchModelJson {
  MarchModelJson({
    required this.items,
  });

  List<Item>? items;

  factory MarchModelJson.fromJson(Map<String, dynamic> json) => MarchModelJson(
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );
}

class Item {
  Item({
    required this.id,
    required this.event,
    required this.date,
  });

  String id;
  String event;
  String date;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        event: json["event"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "event": event,
        "date": date,
      };
}
