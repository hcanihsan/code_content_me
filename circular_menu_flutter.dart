// -------------------------------------------------- //

import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';

void main() {
  runApp(const MyAppCircularMenu());
}

class MyAppCircularMenu extends StatelessWidget {
  const MyAppCircularMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppCircularMenuPage(),
    );
  }
}

class MyAppCircularMenuPage extends StatelessWidget {
  const MyAppCircularMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Circular Menu'),
      ),
      body: Center(
        child: CircularMenu(
            toggleButtonColor: Colors.indigo,
            alignment: Alignment.center,
            items: [
              CircularMenuItem(
                onTap: () {},
                icon: Icons.settings,
              ),
              CircularMenuItem(
                onTap: () {},
                icon: Icons.info,
              ),
              CircularMenuItem(
                onTap: () {},
                icon: Icons.person,
              ),
              CircularMenuItem(
                onTap: () {},
                icon: Icons.alarm,
              ),
              CircularMenuItem(
                onTap: () {},
                icon: Icons.air,
              ),
              CircularMenuItem(
                onTap: () {},
                icon: Icons.water,
              )
            ]),
      ),
    );
  }
}

// -------------------------------------------------- //