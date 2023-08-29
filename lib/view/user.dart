import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: ListView(children: [
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_MKXx5rEMXi6W3s1OA_IYcO2JsbIGbK9gbQ&usqp=CAU',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Бильбо Сумкин',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'newzealand_shir@gmail.com',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 2,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 250, 0),
                  child: Text(
                    'Мероприятия',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  // ignore: avoid_print
                  onTap: () => print('object'),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                    child: Row(children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network(
                            'https://d15k2d11r6t6rl.cloudfront.net/public/users/Integrators/c14e6b58-2bfe-4810-bc80-1392880e4cdc/5050213/image%201.png'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text('Rock in Russia')
                    ]),
                  ),
                ),
                FloatingActionButton(
                    child: const Text('en'),
                    onPressed: () {
                      context.setLocale(const Locale('en'));
                    }),
                FloatingActionButton(
                    child: const Text('ru'),
                    onPressed: () {
                      context.setLocale(const Locale('ru'));
                    }),
                FloatingActionButton(
                    child: const Text('zh'),
                    onPressed: () {
                      context.setLocale(const Locale('zh'));
                    }),
              ],
            ),
          ]),
        ),
      );
}
