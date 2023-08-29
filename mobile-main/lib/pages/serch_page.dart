import 'package:eventssurgu/reader/read_march_json.dart';
import 'package:eventssurgu/reader/march_model_json.dart';

import 'package:flutter/material.dart';

class SerchPage extends StatefulWidget {
  const SerchPage({super.key});

  @override
  State<SerchPage> createState() => _SerchPageState();
}

class _SerchPageState extends State<SerchPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder<List<Item>>(
            future: ReaderJson().getMarch(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(children: [
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 100,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    snapshot.data![index].date,
                                    style: const TextStyle(
                                        fontFamily: 'BAHNSCHRIFT'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  snapshot.data![index].event,
                                  style: const TextStyle(
                                      fontFamily: 'BAHNSCHRIFT'),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 1,
                            decoration: const BoxDecoration(color: Colors.grey),
                          )
                        ]),
                      );
                    });
              }
            }),
      );
}
