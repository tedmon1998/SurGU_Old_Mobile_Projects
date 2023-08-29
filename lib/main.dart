import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String? id = '';

  void _sendrequest() async {
    Dio dio = Dio();
    Response response = await dio.get('http://10.168.25.159:5004/api/schedule');

    setState(() {
      id = response.data['entries'][0]['course']['discipline'];
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Text(
                    id.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                IconButton(
                  onPressed: () {
                    _sendrequest();
                  },
                  icon: const Icon(Icons.get_app),
                )
              ],
            ),
          ),
        ),
      );
}
