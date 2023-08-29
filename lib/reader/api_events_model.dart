// To parse this JSON data, do
//
//     final events = eventsFromJson(jsonString);

import 'dart:convert';

Events eventsFromJson(String str) => Events.fromJson(json.decode(str));

String eventsToJson(Events data) => json.encode(data.toJson());

class Events {
  int totalCount;
  int pageSize;
  int currentPage;
  List<Entry> entries;

  Events({
    required this.totalCount,
    required this.pageSize,
    required this.currentPage,
    required this.entries,
  });

  factory Events.fromJson(Map<String, dynamic> json) => Events(
        totalCount: json["totalCount"],
        pageSize: json["pageSize"],
        currentPage: json["currentPage"],
        entries:
            List<Entry>.from(json["entries"].map((x) => Entry.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalCount": totalCount,
        "pageSize": pageSize,
        "currentPage": currentPage,
        "entries": List<dynamic>.from(entries.map((x) => x.toJson())),
      };
}

class Entry {
  int id;
  String externalId;
  String title;
  String description;
  DateTime? checkStartDate;
  DateTime? checkEndDate;
  DateTime startDate;
  DateTime endDate;
  String startTime;
  String endTime;
  TimeZone timeZone;
  String? lat;
  String? lng;
  String location;
  String link;
  Platform platform;
  List<Attachment> attachments;

  Entry({
    required this.id,
    required this.externalId,
    required this.title,
    required this.description,
    this.checkStartDate,
    this.checkEndDate,
    required this.startDate,
    required this.endDate,
    required this.startTime,
    required this.endTime,
    required this.timeZone,
    this.lat,
    this.lng,
    required this.location,
    required this.link,
    required this.platform,
    required this.attachments,
  });

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
        id: json["id"],
        externalId: json["externalId"],
        title: json["title"],
        description: json["description"],
        checkStartDate: json["checkStartDate"] == null
            ? null
            : DateTime.parse(json["checkStartDate"]),
        checkEndDate: json["checkEndDate"] == null
            ? null
            : DateTime.parse(json["checkEndDate"]),
        startDate: DateTime.parse(json["startDate"]),
        endDate: DateTime.parse(json["endDate"]),
        startTime: json["startTime"],
        endTime: json["endTime"],
        timeZone: timeZoneValues.map[json["timeZone"]]!,
        lat: json["lat"],
        lng: json["lng"],
        location: json["location"],
        link: json["link"],
        platform: platformValues.map[json["platform"]]!,
        attachments: List<Attachment>.from(
            json["attachments"].map((x) => Attachment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "externalId": externalId,
        "title": title,
        "description": description,
        "checkStartDate": checkStartDate?.toIso8601String(),
        "checkEndDate": checkEndDate?.toIso8601String(),
        "startDate": startDate.toIso8601String(),
        "endDate": endDate.toIso8601String(),
        "startTime": startTime,
        "endTime": endTime,
        "timeZone": timeZoneValues.reverse[timeZone],
        "lat": lat,
        "lng": lng,
        "location": location,
        "link": link,
        "platform": platformValues.reverse[platform],
        "attachments": List<dynamic>.from(attachments.map((x) => x.toJson())),
      };
}

class Attachment {
  int id;
  String type;
  String uri;

  Attachment({
    required this.id,
    required this.type,
    required this.uri,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
        id: json["id"],
        type: json["type"],
        uri: json["uri"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "uri": uri,
      };
}

// ignore: constant_identifier_names
enum Platform { SUR_SU30, AIS_STUDENT_SUR_GU }

final platformValues = EnumValues({
  "AIS Student SurGU": Platform.AIS_STUDENT_SUR_GU,
  "SurSU30": Platform.SUR_SU30
});

// ignore: constant_identifier_names
enum TimeZone { GMT_5 }

final timeZoneValues = EnumValues({"GMT+5": TimeZone.GMT_5});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
