import 'package:flutter/material.dart';

class AuthorsPage extends StatelessWidget {
  const AuthorsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Text(
                'О нас',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BAHNSCHRIFT'),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: const <Widget>[
                  SizedBox(width: 55),
                  Text(
                    'Авторы:',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BAHNSCRIFT'),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'Дмитрий Вовчинский',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Fullstak разработчик',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'МБОУ лицей имени генерл-майора',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const Text(
                'Хисматулина Василия Иванивича',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 33,
              ),
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black),
              ),
              const SizedBox(
                height: 33,
              ),
              const Text(
                'Никита Огнев',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'UI/UX дизайнер',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'МБОУ лицей имени генерл-майора',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const Text(
                'Хисматулина Василия Иванивича',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 33,
              ),
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black),
              ),
              const SizedBox(
                height: 33,
              ),
              const Text(
                'Вадим Патапов',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Data инженер',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Отдел по реализации цифровых проектов СурГУ',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 33,
              ),
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black),
              ),
              const SizedBox(
                height: 33,
              ),
              const Text(
                'Алексей Чепайкин',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Инженер-программист',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Отдел по реализации цифровых проектов СурГУ',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 33,
              ),
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black),
              ),
              const SizedBox(
                height: 33,
              ),
              const Text(
                'Виталий Абабий',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Руководитель отдела',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Отдел по реализации цифровых проектов СурГУ',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(75, 75, 75, 100),
                    fontFamily: 'BAHNSCRIFT'),
              ),
              const SizedBox(
                height: 33,
              ),
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black),
              ),
              const SizedBox(
                height: 33,
              ),
            ],
          ),
        ]),
      );
}
