// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:eventssurgu/reader/event_model_json.dart';

// ignore: must_be_immutable
class EventsDeteil extends StatelessWidget {
  final Item events;

  List<Color> kcolors = [
    const Color.fromRGBO(0, 139, 163, 100),
    const Color.fromRGBO(90, 190, 180, 20),
  ];

  EventsDeteil({
    Key? key,
    required this.events,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        child: Image(
                          image: CachedNetworkImageProvider(events.image),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: <Widget>[
                        const SizedBox(
                          width: 22,
                        ),
                        Text(
                          events.event,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 22,
                          ),
                          Text(
                            events.date,
                            style: const TextStyle(
                                fontSize: 16, fontFamily: 'BAHNSCRIFT'),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              events.description,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'BAHNSCHRIFT'),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          InkWell(
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      stops: const [0.4, 1],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: kcolors),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Center(
                                child: Text(
                                  "Назад",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'BAHNSCHRIFT'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
