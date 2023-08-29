import 'package:eventssurgu/pages/events_deteil.dart';
import 'package:eventssurgu/reader/event_model_json.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class EventsModel extends StatelessWidget {
  EventsModel({
    super.key,
    required this.id,
    required this.event,
    required this.date,
    required this.description,
    required this.image,
  });
  String id;
  String event;
  String date;
  String description;
  String image;

  @override
  Widget build(
    BuildContext context,
  ) =>
      Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 8, top: 8, bottom: 8, left: 8),
          child: Stack(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(234, 234, 242, 255),
                  borderRadius: BorderRadius.circular(15)),
              height: 250,
              width: 250,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(image),
                      ),
                    ),
                    height: 140,
                    width: 250,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            event,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BAHNSCHRIFT'),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(children: const <Widget>[
                      Text(
                        'Сургут, СурГУ, Ленина 1',
                        style: TextStyle(
                            color: Colors.grey, fontFamily: 'BAHNSCHRIFT'),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EventsDeteil(
                            events: Item(
                                id: id,
                                event: event,
                                date: date,
                                description: description,
                                image: image),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 40,
                      width: 218,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(0, 139, 163, 100),
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          "Подробности",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 139, 163, 100),
                              fontFamily: 'BAHNSCHRIFT'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(140, 10, 0, 86),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(255, 0, 139, 163),
                ),
                height: 24,
                width: 99,
                child: Center(
                    child: Text(
                  date,
                  style: const TextStyle(
                      color: Colors.white, fontFamily: 'BAHNSCHRIFT'),
                )),
              ),
            ),
          ]),
        ),
      ]);
}
