//import 'package:eventssurgu/pages/authors.dart';
import 'package:eventssurgu/pages/events_deteil.dart';
import 'package:eventssurgu/pages/events_model.dart';
import 'package:eventssurgu/reader/event_model_json.dart';
import 'package:eventssurgu/reader/read_event_json.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: FutureBuilder<List<Item>>(
          future: ReaderJson().getEvent(),
          builder: (context, snapshot) {
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
                    //shrinkWrap: true,
                    // scrollDirection: Axis.vertical,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EventsDeteil(
                            events: Item(
                                id: snapshot.data![index].id,
                                event: snapshot.data![index].event,
                                date: snapshot.data![index].date,
                                description: snapshot.data![index].description,
                                image: snapshot.data![index].image),
                          ),
                        ),
                      ),
                      child: EventsModel(
                        id: snapshot.data![index].id,
                        event: snapshot.data![index].event,
                        date: snapshot.data![index].date,
                        description: snapshot.data![index].description,
                        image: snapshot.data![index].image,
                      ),
                    ),
                  ),
                ),
              ]);
            }
          }));
}

// import 'package:eventssurgu/pages/authors.dart';
// import 'package:eventssurgu/pages/events_deteil.dart';
// import 'package:eventssurgu/pages/events_model.dart';
// import 'package:eventssurgu/reader/event_model_json.dart';
// import 'package:eventssurgu/reader/read_event_json.dart';
// import 'package:flutter/material.dart';

// class Events extends StatefulWidget {
//   const Events({super.key});

//   @override
//   State<Events> createState() => _EventsState();
// }

// class _EventsState extends State<Events> {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//       body: FutureBuilder<List<Item>>(
//           future: ReaderJson().getEvent(),
//           builder: (context, snapshot) {
//             if (!snapshot.hasData) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else {
//               return ListView.builder(
//                   itemCount: 1,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       children: <Widget>[
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 25, right: 25),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               const Icon(
//                                 Icons.search,
//                                 color: Color.fromRGBO(0, 139, 163, 100),
//                               ),
//                               IconButton(
//                                 onPressed: () => Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                             const AuthorsPage())),
//                                 icon: const Icon(Icons.settings),
//                                 color: const Color.fromRGBO(0, 139, 163, 100),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             left: 20,
//                             right: 20,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: const <Widget>[
//                               Text(
//                                 'Ближайшие',
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//                                     fontFamily: 'BAHNSCHRIFT'),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                           height: 270,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(15)),
//                           child: ListView.builder(
//                             scrollDirection: Axis.horizontal,
//                             itemCount: snapshot.data!.length,
//                             itemBuilder: (context, index) => GestureDetector(
//                               onTap: () => Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => EventsDeteil(
//                                     events: Item(
//                                         id: snapshot.data![index].id,
//                                         event: snapshot.data![index].event,
//                                         date: snapshot.data![index].date,
//                                         description:
//                                             snapshot.data![index].description,
//                                         image: snapshot.data![index].image),
//                                   ),
//                                 ),
//                               ),
//                               child: EventsModel(
//                                 id: snapshot.data![index].id,
//                                 event: snapshot.data![index].event,
//                                 date: snapshot.data![index].date,
//                                 description: snapshot.data![index].description,
//                                 image: snapshot.data![index].image,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                       ],
//                     );
//                   });
//             }
//           }));
// }
