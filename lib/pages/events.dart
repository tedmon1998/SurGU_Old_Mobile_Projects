//import 'package:eventssurgu/pages/authors.dart';
import 'package:eventssurgu/pages/events_deteil.dart';
import 'package:eventssurgu/pages/events_model.dart';
// import 'package:eventssurgu/reader/event_model_json.dart';
// import 'package:eventssurgu/reader/read_event_json.dart';
import 'package:eventssurgu/reader/api_events_response.dart';
import 'package:eventssurgu/reader/api_events_model.dart';
import 'package:eventssurgu/reader/event_model_json.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

DateFormat dateFormat = DateFormat.MMMMd('ru');

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder<List<Entry>>(
          future: ApiClientCourse().getEvents(),
          builder: (context, snapshot) {
            //print(ApiClientCourse().statEvents.isEmpty);
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Column(children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Ближайшие',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BAHNSCHRIFT'),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EventsDeteil(
                            events: Item(
                                id: snapshot.data![index].id.toString(),
                                event: snapshot.data![index].title,
                                date:
                                    '${dateFormat.format(snapshot.data![index].startDate)}${' '}${snapshot.data![index].startTime.substring(0)}',
                                description: snapshot.data![index].description,
                                image: snapshot
                                            .data![index].attachments.isEmpty ==
                                        true
                                    ? 'https://img1.goodfon.ru/original/1920x1080/a/69/kartinka-3d-dikaya-koshka.jpg'
                                    : snapshot.data![index].attachments[0].uri,
                                location: snapshot.data![index].location),
                          ),
                        ),
                      ),
                      child: EventsModel(
                        id: snapshot.data![index].id.toString(),
                        event: snapshot.data![index].title,
                        date:
                            dateFormat.format(snapshot.data![index].startDate),
                        description: snapshot.data![index].description,
                        image: snapshot.data![index].attachments.isEmpty == true
                            ? 'https://img1.goodfon.ru/original/1920x1080/a/69/kartinka-3d-dikaya-koshka.jpg'
                            : snapshot.data![index].attachments[0].uri,
                        location: snapshot.data![index].location,
                      ),
                    ),
                  ),
                ),
              ]);
            }
          },
        ),
      );
}
