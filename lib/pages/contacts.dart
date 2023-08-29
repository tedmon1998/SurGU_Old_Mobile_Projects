import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  latLng.LatLng center = latLng.LatLng(61.240063150248744, 73.4108873551914);
  double currentZoom = 16;
  MapController mapController = MapController();

  final markers = <Marker>[
    Marker(
      point: latLng.LatLng(61.240063150248744, 73.4108873551914),
      builder: (context) => IconButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (builder) => Container(
            height: 300,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.green,
                  padding: const EdgeInsets.all(30),
                  child: const Text(
                    'Региональный Модельныцй Центр',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'г. Сургут, пр. Ленина, д. 1,\nкаб. 633, 634',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.phone,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: _launchCaller,
                        child: Text(
                          '8(3462)76-31-15',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        icon: const Icon(
          Icons.location_on,
          color: Colors.red,
          size: 25,
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: FlutterMap(
          mapController: mapController,
          options: MapOptions(
            center: center,
            zoom: currentZoom,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
              userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            ),
            MarkerLayerOptions(markers: markers)
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: _zoomIn,
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              heroTag: null,
              onPressed: _zoomOut,
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      );

  void _zoomIn() {
    currentZoom = currentZoom + 0.5;
    mapController.move(center, currentZoom);
  }

  void _zoomOut() {
    currentZoom = currentZoom - 0.5;
    mapController.move(center, currentZoom);
  }

  static Future<void> _launchCaller() async {
    const url = "tel:8(3462)76-31-15";
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }
}













// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:yandex_mapkit/yandex_mapkit.dart';

// class Contacts extends StatefulWidget {
//   const Contacts({Key? key}) : super(key: key);

//   @override
//   State<Contacts> createState() => _ContactsState();
// }

// class _ContactsState extends State<Contacts> {
//   late final Completer<YandexMapController> _completer = Completer();
//   final MapObjectId targetMapObjectId = MapObjectId('target_placemark');

//   final _point =
//       const Point(latitude: 61.240063150248744, longitude: 73.4108873551914);
//   final placemark = PlacemarkMapObject(
//       mapId: const MapObjectId('mark'),
//       point: const Point(latitude: 61.240063150248744, longitude: 73.4108873551914));
//   @override
//   void initState() {
//     placemark;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: YandexMap(
//           onMapCreated: _onMapCreated,
//         ),
//         floatingActionButton: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             FloatingActionButton(
//               heroTag: null,
//               onPressed: _zoomIn,
//               child: const Icon(Icons.add),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             FloatingActionButton(
//               heroTag: null,
//               onPressed: _zoomOut,
//               child: const Icon(Icons.remove),
//             ),
//           ],
//         ),
//       );

//   void _onMapCreated(YandexMapController controller) {
//     _completer.complete(controller);
    

//     controller.moveCamera(
//       CameraUpdate.newCameraPosition(
//         CameraPosition(target: _point, zoom: 15),
//       ),
//     );
//   }

//   Future<void> _zoomIn() async {
//     YandexMapController controller = await _completer.future;
//     controller.moveCamera(CameraUpdate.zoomIn());
//   }

//   Future<void> _zoomOut() async {
//     YandexMapController controller = await _completer.future;
//     controller.moveCamera(CameraUpdate.zoomOut());
//   }
// }

















// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Contacts extends StatelessWidget {
//   const Contacts({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text(
//             'Контакты',
//             style: GoogleFonts.ledger(),
//           ),
//           backgroundColor: Colors.green,
//         ),
//         body: Column(
//           children: <Widget>[
//             Expanded(
//               flex: 3,
//               child: Container(
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('essets/images/map.png'),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Center(
//                 child: Text(
//                   'Контакты',
//                   style: GoogleFonts.ruslanDisplay(
//                       fontSize: 50, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             Text(
//               'Телефон:  8(3462)76-31-15',
//               style:
//                   GoogleFonts.ledger(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Padding(
//               padding: EdgeInsets.all(20),
//               child: Expanded(
//                 child: Center(
//                   child: Text(
//                     'Адрес:  г. Сургут, пр. Ленина, д. 1, каб. 633, 634',
//                     style: GoogleFonts.ledger(
//                         fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
// }
