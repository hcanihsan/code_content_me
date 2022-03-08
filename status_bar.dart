// ------------------------------------------------------------ //

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.green));
  runApp(const MyAppColorStatusBar());
}

class MyAppColorStatusBar extends StatelessWidget {
  const MyAppColorStatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Flutter Status Bar Android')),
          body: const Center(
            child: Text(
              'Hallo Semuanya :)',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------------ //