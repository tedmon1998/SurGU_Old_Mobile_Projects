import 'package:flutter/material.dart';
import '../domain/api_clients/api_client.dart';
import 'package:line_icons/line_icons.dart';
import '../wigets/settings_column.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    ApiClient().getTable();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Настройки'),
          backgroundColor: Colors.green,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('essets/images/surgu2.png'),
          ),
        ),
        body: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text(
                        'Список групп',
                      ),
                      content: const Text(''),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('ok',
                                style: TextStyle(color: Colors.black)))
                      ],
                    );
                  },
                );
              },
              child: SettingsColumn(
                texT: const Text(
                  'Группы',
                  style: TextStyle(fontSize: 15),
                ),
                icoN: const Icon(
                  LineIcons.userFriends,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text(
                          'Список преподавателей',
                        ),
                        content: const Text(''),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'ok',
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      );
                    });
              },
              child: SettingsColumn(
                texT: const Text(
                  'Преподаватели',
                  style: TextStyle(fontSize: 15),
                ),
                icoN: const Icon(
                  LineIcons.user,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text(
                          'Региональный модельный центр',
                        ),
                        content: const SizedBox(
                          height: 100,
                          child: Column(children: <Widget>[
                            Text('Номер телефона: 8(3462) 76-31-15 '),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Адрес: г. Сургут, пр. Ленина, д. 1 '),
                          ]),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'ok',
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      );
                    });
              },
              child: SettingsColumn(
                texT: const Text(
                  'Контакты',
                  style: TextStyle(fontSize: 15),
                ),
                icoN: const Icon(
                  LineIcons.phone,
                  size: 30,
                ),
              ),
            ),
            SettingsColumn(
              texT: const Text(
                'Темы',
                style: TextStyle(fontSize: 15),
              ),
              icoN: const Icon(
                LineIcons.penFancy,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
