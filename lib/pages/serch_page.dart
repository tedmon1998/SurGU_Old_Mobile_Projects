import 'package:eventssurgu/reader/march_model_json.dart';
import 'package:eventssurgu/reader/aprel_model_json.dart';
import 'package:eventssurgu/reader/read_aprel_json.dart';
import 'package:eventssurgu/reader/read_march_json.dart';
import 'package:flutter/material.dart';

class SerchPage extends StatefulWidget {
  const SerchPage({super.key});

  @override
  State<SerchPage> createState() => _SerchPageState();
}

class _SerchPageState extends State<SerchPage> {
  final PageController controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 5,
              ),
              TextButton(
                onPressed: () => controller.jumpToPage(
                  0,
                ),
                child: const Text(
                  'Март',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'BAHNSCHRIFT',
                    color: Color.fromRGBO(0, 139, 163, 100),
                  ),
                ),
              ),
              TextButton(
                onPressed: () => controller.jumpToPage(
                  1,
                ),
                child: const Text(
                  'Апрель',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'BAHNSCHRIFT',
                    color: Color.fromRGBO(0, 139, 163, 100),
                  ),
                ),
              ),
              TextButton(
                onPressed: () => controller.jumpToPage(
                  2,
                ),
                child: const Text(
                  'Май',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'BAHNSCHRIFT',
                    color: Color.fromRGBO(0, 139, 163, 100),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                FutureBuilder<List<Item>>(
                    future: ReaderJsonMarch().getMarch(),
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
                                    decoration:
                                        const BoxDecoration(color: Colors.grey),
                                  )
                                ]),
                              );
                            });
                      }
                    }),
                FutureBuilder<List<Event>>(
                    future: ReaderJsonAprelAprel().getAprel(),
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
                                    decoration:
                                        const BoxDecoration(color: Colors.grey),
                                  )
                                ]),
                              );
                            });
                      }
                    }),
                FutureBuilder<List<Event>>(
                    future: ReaderJsonAprelAprel().getAprel(),
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
                                    decoration:
                                        const BoxDecoration(color: Colors.grey),
                                  ),
                                ]),
                              );
                            });
                      }
                    }),
              ],
            ),
          ),
        ]),
      );
}
