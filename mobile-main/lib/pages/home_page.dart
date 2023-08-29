import 'package:eventssurgu/pages/authors.dart';
import 'package:eventssurgu/pages/events.dart';
import 'package:eventssurgu/pages/serch_page.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 1;
  final _pageNom = [const SerchPage(), const Events(), const AuthorsPage()];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _pageNom[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Лист'),
            BottomNavigationBarItem(
                icon: Icon(Icons.house_outlined), label: 'Главная'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'О нас'),
          ],
          currentIndex: selectedPage,
          selectedItemColor: const Color.fromRGBO(0, 139, 163, 100),
          onTap: (int index) {
            setState(() => selectedPage = index);
          },
        ),
      );
}
