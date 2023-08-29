import 'dart:convert';

AprelModelJson marchFromJson(String str) =>
    AprelModelJson.fromJson(json.decode(str));

class AprelModelJson {
  AprelModelJson({
    required this.items,
  });

  List<Event>? items;

  factory AprelModelJson.fromJson(Map<String, dynamic> json) => AprelModelJson(
        items: List<Event>.from(json["items"].map((x) => Event.fromJson(x))),
      );
}

class Event {
  Event({
    required this.id,
    required this.event,
    required this.date,
  });

  String id;
  String event;
  String date;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
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
