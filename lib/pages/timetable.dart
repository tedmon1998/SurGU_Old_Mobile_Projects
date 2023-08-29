import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../domain/api_clients/api_client.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context)  {
    ApiClient().getWriting;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Расписание',
            style: GoogleFonts.ledger(),
          ),
          backgroundColor: Colors.green,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('essets/images/surgu2.png'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(253, 158, 158, 158),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: const Text('1'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text('data'),
                  const SizedBox(
                    width: 200,
                  ),
                  const Text('11.40 - 13.10')
                ],
              ),
            ),
            const Text(
              'Дисциплина',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text('преподаватель'),
          ],
        ),
      ),
    );
  }
}
