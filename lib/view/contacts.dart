import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
          children: [
            Column(
              children: <Widget>[
                Image.network(
                    'https://sloanreview.mit.edu/wp-content/uploads/2018/09/GEN-Faro-Marketing-Market-Research-Big-Data-Analysis-1200x627-1200x627.jpg'),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        size: 30,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('1234567'),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        size: 30,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('data-market@gmail.com'),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.pin_drop,
                        size: 30,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Location'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Наши спонсоры',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))
              ],
            ),
          ],
        ),
      );
}
