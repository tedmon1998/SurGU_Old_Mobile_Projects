class TimeTable {
  int? totalCount;
  int? pageSize;
  int? currentPage;
  List<Entries>? entries;

  TimeTable({this.totalCount, this.pageSize, this.currentPage, this.entries});

  TimeTable.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    pageSize = json['pageSize'];
    currentPage = json['currentPage'];
    if (json['entries'] != null) {
      entries = <Entries>[];
      json['entries'].forEach((v) {
        entries!.add(new Entries.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    data['pageSize'] = this.pageSize;
    data['currentPage'] = this.currentPage;
    if (this.entries != null) {
      data['entries'] = this.entries!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Entries {
  int? id;
  Course? course;
  Null? lesson;
  Null? scheduleScheme;
  String? direction;
  String? group;
  String? teacher;
  String? dayID;
  String? audience;
  Null? type;
  String? startAt;
  String? finishAt;
  String? from;
  String? to;

  Entries(
      {this.id,
      this.course,
      this.lesson,
      this.scheduleScheme,
      this.direction,
      this.group,
      this.teacher,
      this.dayID,
      this.audience,
      this.type,
      this.startAt,
      this.finishAt,
      this.from,
      this.to});

  Entries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    course =
        json['course'] != null ? new Course.fromJson(json['course']) : null;
    lesson = json['lesson'];
    scheduleScheme = json['scheduleScheme'];
    direction = json['direction'];
    group = json['group'];
    teacher = json['teacher'];
    dayID = json['dayID'];
    audience = json['audience'];
    type = json['type'];
    startAt = json['start_at'];
    finishAt = json['finish_at'];
    from = json['from'];
    to = json['to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.course != null) {
      data['course'] = this.course!.toJson();
    }
    data['lesson'] = this.lesson;
    data['scheduleScheme'] = this.scheduleScheme;
    data['direction'] = this.direction;
    data['group'] = this.group;
    data['teacher'] = this.teacher;
    data['dayID'] = this.dayID;
    data['audience'] = this.audience;
    data['type'] = this.type;
    data['start_at'] = this.startAt;
    data['finish_at'] = this.finishAt;
    data['from'] = this.from;
    data['to'] = this.to;
    return data;
  }
}

class Course {
  int? id;
  String? discipline;
  String? description;

  Course({this.id, this.discipline, this.description});

  Course.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    discipline = json['discipline'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['discipline'] = this.discipline;
    data['description'] = this.description;
    return data;
  }
}
