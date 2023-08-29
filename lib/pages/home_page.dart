import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:study_manager/pages/settings.dart';
import 'package:study_manager/pages/tasks.dart';
import 'package:study_manager/pages/timetable.dart';

class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int selectedPage = 0;
  final _pageNom = [
    const Tasks(),
    const TimeTable(),
    const Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageNom[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        disableDefaultTabController: true,
        backgroundColor: Colors.green,
        style: TabStyle.reactCircle,
        items: const [
          TabItem(icon: Icons.task, title: 'Задачи'),
          TabItem(icon: Icons.more_time, title: 'Расписание'),
          TabItem(icon: Icons.settings, title: 'Настройки'),
        ],
        initialActiveIndex: selectedPage,
        onTap: (int index) {
          setState(() => selectedPage = index);
        },
      ),
    );
  }
}

















// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final user = FirebaseAuth.instance.currentUser!;

//     return Scaffold(
//         body: ElevatedButton.icon(
//             onPressed: () {
//               FirebaseAuth.instance.signOut();
//             },
//             icon: const Icon(Icons.exit_to_app),
//             label: const Text('data')));
//   }
// }
