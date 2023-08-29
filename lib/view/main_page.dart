import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0),
                            blurRadius: 10,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    height: 250,
                    width: 150,
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.network(
                            'https://d15k2d11r6t6rl.cloudfront.net/public/users/Integrators/c14e6b58-2bfe-4810-bc80-1392880e4cdc/5050213/image%201.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Rock in Russia',
                          style: TextStyle(
                              fontFamily: "montserrat",
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Мероприятие в честь 10 летия компании',
                          style:
                              TextStyle(fontFamily: "montserrat", fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
