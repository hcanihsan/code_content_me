// ----------------------------------------------------------- //

import 'package:flutter/material.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

void main() {
  runApp(const MyAppSpeedDial());
}

class MyAppSpeedDial extends StatelessWidget {
  const MyAppSpeedDial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppSpeedDialPage(),
    );
  }
}

class MyAppSpeedDialPage extends StatefulWidget {
  const MyAppSpeedDialPage({Key? key}) : super(key: key);

  @override
  State<MyAppSpeedDialPage> createState() => _MyAppSpeedDialPageState();
}

class _MyAppSpeedDialPageState extends State<MyAppSpeedDialPage> {
  String _content = 'None';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        child: const Icon(Icons.menu_book),
        speedDialChildren: [
          SpeedDialChild(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
              label: 'Set Alarm Journey',
              onPressed: () {
                setState(() {
                  _content = 'Set Alarm Journey';
                });
              },
              child: const Icon(Icons.alarm)),
          SpeedDialChild(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              label: 'Choose City Location',
              onPressed: () {
                setState(() {
                  _content = 'Choose City Location';
                });
              },
              child: const Icon(Icons.location_city)),
          SpeedDialChild(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              label: 'Get Ticket Now',
              onPressed: () {
                setState(() {
                  _content = 'Get Ticket Now';
                });
              },
              child: const Icon(Icons.airplanemode_on_outlined)),
        ],
      ),
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Text(
          _content,
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

// ----------------------------------------------------------- //