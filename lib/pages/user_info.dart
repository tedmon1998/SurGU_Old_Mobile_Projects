import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
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
              height: 20,
            ),
            const Row(
              children: <Widget>[
                SizedBox(
                  width: 52,
                ),
                Text(
                  'Имя',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BAHBSCRIFT'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(52, 0, 52, 0),
              child: TextField(
                style: const TextStyle(height: 0.48),
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Ivanov',
                  hintStyle: const TextStyle(fontSize: 14),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      );
}
