import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Посуточная аренда недвижимости",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  _gdearen(),
                  const Divider(),
                  _kogda(),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        _moizasContainer(),

        const SizedBox(height: 100),
        _icon(Icons.key, 'Снять'),
        _icon(Icons.sticky_note_2_sharp, 'Сдать'),
        _icon(Icons.person, 'Профиль'),
      ],
    ),
  );
}

Widget _gdearen() {
  return Row(
    children: <Widget>[
      Icon(
        Icons.maps_home_work_rounded,
        color: Colors.white,
      ),
      const SizedBox(width: 8),
      Text(
        'Где арендовать',
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}

Widget _kogda() {
  return Row(
    children: <Widget>[
      Icon(
        Icons.access_time_filled,
        color: Colors.white,
      ),
      const SizedBox(width: 8),
      Text(
        'Когда',
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}

Widget _moizasContainer() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    color: Colors.blue,
    child: _moizas(),
  );
}

Widget _moizas() {
  return Column(
    children: <Widget>[
      Icon(
        Icons.home_filled,
        color: Colors.white,
      ),
      Text(
        'Мои заселения',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      Text(
        'Предстоящие и предыдущие',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    ],
  );
}

Widget _icon(IconData icon, String text) {
  return Row(
    children: <Widget>[
      Icon(
        icon,
        color: Colors.blue,
      ),
      const SizedBox(width: 8),
      Text(
        text,
        style: TextStyle(color: Colors.blue),
      ),
    ],
  );
}
