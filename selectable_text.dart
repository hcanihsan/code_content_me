// ------------------------------------------------------ //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppSelectable());
}

class MyAppSelectable extends StatelessWidget {
  const MyAppSelectable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppSelectablePage(),
    );
  }
}

class MyAppSelectablePage extends StatelessWidget {
  const MyAppSelectablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Text'),
      ),
      body: const Center(
        child: SelectableText(
          'This Message Can be Copied',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}

// ------------------------------------------------------ //