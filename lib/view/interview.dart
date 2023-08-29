import 'package:flutter/material.dart';

class Interview extends StatefulWidget {
  const Interview({Key? key}) : super(key: key);

  @override
  State<Interview> createState() => _InterviewState();
}

class _InterviewState extends State<Interview>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(66, 33, 149, 243),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(child: Text('вопрос-опрос')),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(66, 33, 149, 243),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: [
                              Text('1'),
                              SizedBox(
                                width: 25,
                              ),
                              Text('ответ')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text('2'),
                              SizedBox(
                                width: 25,
                              ),
                              Text('ответ')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text('3'),
                              SizedBox(
                                width: 25,
                              ),
                              Text('ответ')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text('4'),
                              SizedBox(
                                width: 25,
                              ),
                              Text('ответ')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
