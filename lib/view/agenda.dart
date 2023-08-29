import 'package:flutter/material.dart';

class Agenda extends StatefulWidget {
  const Agenda({Key? key}) : super(key: key);

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(children: [
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: ClipRRect(
                      child: SizedBox(
                        height: 170,
                        width: 150,
                        child: Image(
                          image: NetworkImage(
                              'https://d15k2d11r6t6rl.cloudfront.net/public/users/Integrators/c14e6b58-2bfe-4810-bc80-1392880e4cdc/5050213/image%201.png'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Rock in Russia',
                    style: TextStyle(
                        fontFamily: "montserrat",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800]),
                  )
                ],
              ),
              const Text(
                'Нам есть, что обсудить!',
                style: TextStyle(
                    fontFamily: "montserrat",
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'В этом году компания IXcellerate cобирает профессионалов индустрии ЦОД и сопряженных отраслей не только, чтобы возобновить традиции рок-фестиваля Rockin’Russia, но и для того, чтобы поднять бокалы в честь 10-летия компании и открытия нового дата-центра MOS5 на юге Москвы.',
                  style: TextStyle(fontFamily: "montserrat", fontSize: 15),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'После вынужденного перерыва мы с новыми силами и на новой площадке собираем единомышленников, неравнодушных к рок-музыке и предпочитающих комфортное общение в свободной неформальной обстановке. Гости фестиваля получат эксклюзивную возможность стать участниками официальной церемонии открытия IXcellerate MOS5. ',
                  style: TextStyle(fontFamily: "montserrat", fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Column(children: <Widget>[
                    Text(
                      'ПРОГРАММА МЕРОПРИЯТИЯ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          width: 10,
                        ),
                        Text('15:00'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Регистрация')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          width: 10,
                        ),
                        Text('16:00'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Презентация Южного кампуса IXcellerate')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          width: 10,
                        ),
                        Text('17:00'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            'Церемония открытия дата-центра MOS5\nс трансляцией. Работа спонсорских зон')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          width: 10,
                        ),
                        Text('18:00'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Дополнительная экскурсия\nв дата-центр MOS5')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          width: 10,
                        ),
                        Text('19:30'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            'Празднование 10-летия.\nТоржественное разрезание торта')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          width: 10,
                        ),
                        Text('20:00'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Рок-концерт.\nВыступление IXcellerate Band')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          width: 10,
                        ),
                        Text('20:30'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Выступление Рекорд-оркестра\nи Тимофея Копылова')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          width: 10,
                        ),
                        Text('21:00'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Трансфер до метро "Пражская"')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          width: 10,
                        ),
                        Text('22:00'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Окончание')
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          )
        ]),
      );
}
