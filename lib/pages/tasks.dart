import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  late String _userToDo;
  late String _progect;
  late String _executor;

  void initFireBase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    super.initState();

    initFireBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'Задачи',
          style: GoogleFonts.ledger(),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('essets/images/surgu2.png'),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('item').snapshots(),
        builder: (
          BuildContext context,
          AsyncSnapshot<QuerySnapshot> snapchot,
        ) {
          if (!snapchot.hasData) {
            return const Center(child: Text('Задач нет'));
          } else {
            return ListView.builder(
                itemCount: snapchot.data!.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    background: Container(
                      alignment: Alignment.centerLeft,
                      color: Colors.green,
                      child: const Icon(Icons.check),
                    ),
                    key: Key(snapchot.data!.docs[index].id),
                    secondaryBackground: Container(
                      alignment: Alignment.centerRight,
                      color: Colors.red,
                      child: const Icon(Icons.delete),
                    ),
                    child: Card(
                      child: ListTile(
                        title: Text(
                          // ignore: prefer_interpolation_to_compose_strings
                          'Задача ' + snapchot.data?.docs[index].get('task'),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          // ignore: prefer_interpolation_to_compose_strings
                          'Проект: ' +
                              snapchot.data?.docs[index].get('progect'),
                        ),
                        trailing: Text(
                          // ignore: prefer_interpolation_to_compose_strings
                          'Исполнитель: ' +
                              snapchot.data?.docs[index].get('executor'),
                        ),
                      ),
                    ),
                    onDismissed: (direction) {
                      FirebaseFirestore.instance
                          .collection('item')
                          .doc(snapchot.data!.docs[index].id)
                          .delete();
                    },
                  );
                });
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Column(children: <Widget>[
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'Ваша задача',
                        labelText: 'Задача',
                      ),
                      onChanged: (String value) => _userToDo = value,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'Ваш проект',
                        labelText: 'Проект',
                      ),
                      onChanged: (String value) => _progect = value,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'Исполнитель',
                        labelText: 'Исполнитель',
                      ),
                      onChanged: (String value) => _executor = value,
                    ),
                  ]),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        FirebaseFirestore.instance.collection('item').add({
                          'task': _userToDo,
                          'progect': _progect,
                          'executor': _executor
                        });

                        Navigator.of(context).pop();
                      },
                      child: const Text('Добавить'),
                    ),
                  ],
                );
              });
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: Colors.green,
        ),
      ),
    );
  }
}
