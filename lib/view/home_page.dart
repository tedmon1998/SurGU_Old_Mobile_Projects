import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:event_app_mobile/generated/locale_keys.g.dart';
import 'package:event_app_mobile/view/agenda.dart';
import 'package:event_app_mobile/view/contacts.dart';
import 'package:event_app_mobile/view/main_page.dart';
import 'package:event_app_mobile/view/interview.dart';
import 'package:event_app_mobile/view/user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    MainPage(),
    Agenda(),
    Interview(),
    Contacts(),
    User()
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_drop_down),
          backgroundColor: Colors.lightBlue,
          title: Text(
            LocaleKeys.appBarTitle.tr(),
            style:
                const TextStyle(color: Colors.white, fontFamily: "montserrat"),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.react,
          backgroundColor: Colors.lightBlue,
          items: [
            TabItem(
              icon: const Icon(
                Icons.home,
              ),
              title: LocaleKeys.main.tr(),
            ),
            TabItem(
              icon: const Icon(Icons.bookmark),
              title: LocaleKeys.adgenda.tr(),
            ),
            TabItem(
              icon: const Icon(Icons.textsms_sharp),
              title: LocaleKeys.interview.tr(),
            ),
            TabItem(
              icon: const Icon(Icons.note_alt),
              title: LocaleKeys.contacts.tr(),
            ),
            TabItem(
              icon: const Icon(Icons.person),
              title: LocaleKeys.profile.tr(),
            ),
          ],
          onTap: onItemTapped,
        ),
      );
}
