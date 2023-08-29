import 'package:eventssurgu/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AuthPage extends StatefulWidget {
  final VoidCallback onClickedSingUp;

  const AuthPage({
    Key? key,
    required this.onClickedSingUp,
  }) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String morning = 'Доброе утро!';
  String day = 'Добрый день!';
  String evening = 'Добрый вечер!';
  String night = 'Доброй ночи!';

  DateFormat dayFormat = DateFormat('Hm');
  final hour = DateTime.now().hour;

  List<Color> kcolors = [
    const Color.fromRGBO(0, 139, 163, 100),
    const Color.fromRGBO(90, 190, 180, 20),
  ]; //#008BA3, #5ABEB4
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              const Center(
                child: SizedBox(
                  height: 428,
                  width: 276,
                  child: Image(
                    image: AssetImage("assets/logo/logo.png"),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 52,
                  ),
                  Text(
                    greatings(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontFamily: 'BAHNSCHRIFT',
                      color: Color.fromRGBO(0, 139, 163, 100),
                    ),
                  )
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(51.5, 20, 51.5, 0),
              //   child: TextField(
              //     style: const TextStyle(height: 0.48),
              //     obscureText: false,
              //     decoration: InputDecoration(
              //       hintText: 'Email адрес или телефон',
              //       hintStyle: const TextStyle(fontSize: 14),
              //       focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //       border: const OutlineInputBorder(
              //         borderRadius: BorderRadius.all(
              //           Radius.circular(15),
              //         ),
              //       ),
              //     ),
              //     onChanged: (value) {
              //       setState(() {});
              //     },
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              //   child: TextField(
              //     style: const TextStyle(height: 0.48),
              //     obscureText: _isvisible,
              //     decoration: InputDecoration(
              //       suffix: GestureDetector(
              //         child: Icon(
              //           _isvisible ? Icons.visibility_off : Icons.visibility,
              //           size: 16,
              //         ),
              //         onTap: () => setState(() {
              //           _isvisible = !_isvisible;
              //         }),
              //       ),
              //       hintText: 'Пароль',
              //       hintStyle: const TextStyle(fontSize: 14),
              //       focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //       border: const OutlineInputBorder(
              //         borderRadius: BorderRadius.all(
              //           Radius.circular(15),
              //         ),
              //       ),
              //     ),
              //     onChanged: (value) {
              //       setState(() {});
              //     },
              //   ),
              // ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          stops: const [0.4, 1],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: kcolors),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      "Войти как пользователь",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'BAHNSCHRIFT'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      );
  greatings() {
    if (hour > 4 && hour < 16) {
      return day;
    } else {
      return evening;
    }
  }
}
