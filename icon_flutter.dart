// ---------------------------------------------------- //

import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

void main() {
  runApp(const MyAppIcons());
}

class MyAppIcons extends StatelessWidget {
  const MyAppIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppIconsPage(),
    );
  }
}

class MyAppIconsPage extends StatefulWidget {
  const MyAppIconsPage({Key? key}) : super(key: key);

  @override
  State<MyAppIconsPage> createState() => _MyAppIconsPageState();
}

class _MyAppIconsPageState extends State<MyAppIconsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Icon'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 50,
              splashRadius: 30,
              onPressed: () {},
              icon: const Icon(
                FlutterRemix
                    .flutter_line, // Change to Icons.person to use Material Icon
              ),
            ),
            const Text(
              '<-------- I Like Flutter',
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------- //