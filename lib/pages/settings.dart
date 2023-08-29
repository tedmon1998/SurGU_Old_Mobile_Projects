import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:study_manager/domain/api_clients/api_client.dart';
import 'package:study_manager/pages/contacts.dart';
import 'package:study_manager/pages/courses.dart';
import 'package:study_manager/pages/web_site.dart';
import 'package:study_manager/wigets/settingsColumn.dart';
import 'contacts.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () => FirebaseAuth.instance.signOut(),
                icon: const Icon(Icons.logout))
          ],
          centerTitle: true,
          title: Text(
            'Настройки',
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
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Courses()),
              ),
              child: SettingsColumn(
                texT: Text(
                  'Курсы',
                  style: GoogleFonts.ledger(fontSize: 15),
                ),
                icoN: const Icon(
                  LineIcons.book,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text(
                    'Список преподавателей',
                    style: GoogleFonts.ledger(),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text(
                        'ok',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              child: SettingsColumn(
                texT: Text(
                  'Преподаватели',
                  style: GoogleFonts.ledger(fontSize: 15),
                ),
                icoN: const Icon(
                  LineIcons.user,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Contacts()),
              ),
              child: SettingsColumn(
                texT: Text(
                  'На карте',
                  style: GoogleFonts.ledger(fontSize: 15),
                ),
                icoN: const Icon(
                  Icons.location_on,
                  size: 30,
                ),
              ),
            ),
            SettingsColumn(
              texT: Text(
                'Темы',
                style: GoogleFonts.ledger(fontSize: 15),
              ),
              icoN: const Icon(
                LineIcons.penFancy,
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WebViewWedget(),
                ),
              ),
              child: SettingsColumn(
                icoN: const Icon(Icons.computer),
                texT: Text(
                  'Сайт',
                  style: GoogleFonts.ledger(fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
