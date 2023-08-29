import 'dart:convert';

EventsModelJson eventsModelJsonFromJson(String str) =>
    EventsModelJson.fromJson(json.decode(str));

class EventsModelJson {
  EventsModelJson({
    required this.items,
  });

  List<Item>? items;

  factory EventsModelJson.fromJson(Map<String, dynamic> json) =>
      EventsModelJson(
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x)))
            .toList(),
      );
}

class Item {
  Item(
      {required this.id,
      required this.event,
      required this.date,
      required this.description,
      required this.image});

  String id;
  String event;
  String date;
  String description;
  String image;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
      id: json["id"],
      event: json["event"],
      date: json["date"],
      description: json["description"],
      image: json["image"]);
}
