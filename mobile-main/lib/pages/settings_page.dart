import 'package:eventssurgu/pages/user_info.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close,
                      size: 20,
                      color: Color.fromRGBO(0, 139, 163, 100),
                    ),
                  ),
                  const Text(
                    'Настройки',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BAHNSCHRIFT'),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.black,
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'Name',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BAHNSCHRIFT'),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'user64789356',
              style: TextStyle(
                  fontSize: 12, color: Colors.grey, fontFamily: 'BAHNSCHRIFT'),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Личная информация',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'BAHNSCRIFT',
                    ),
                  ),
                  IconButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserInfo())),
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 0.5,
                width: 398,
                color: const Color.fromRGBO(212, 214, 221, 100),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Безопастность',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'BAHNSCRIFT',
                    ),
                  ),
                  IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 0.5,
                width: 398,
                color: const Color.fromRGBO(212, 214, 221, 100),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Тема приложения',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'BAHNSCRIFT',
                    ),
                  ),
                  IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 0.5,
                width: 398,
                color: const Color.fromRGBO(212, 214, 221, 100),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'О приложении',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'BAHNSCRIFT',
                    ),
                  ),
                  IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 0.5,
                width: 398,
                color: const Color.fromRGBO(212, 214, 221, 100),
              ),
            )
          ],
        ),
      );
}
