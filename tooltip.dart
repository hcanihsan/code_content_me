// ------------------------------------------------------------------ //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppTooltip());
}

class MyAppTooltip extends StatelessWidget {
  const MyAppTooltip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppTooltipPage(),
    );
  }
}

class MyAppTooltipPage extends StatelessWidget {
  const MyAppTooltipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tooltip'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Tooltip(
                message: 'This is Account Icon',
                child: Icon(Icons.account_circle_outlined, size: 32)),
            SizedBox(
              width: 20,
            ),
            Tooltip(
                message: 'This is Alarm Icon',
                child: Icon(Icons.access_alarm, size: 32)),
            SizedBox(
              width: 20,
            ),
            Tooltip(
              message: 'This is Plus Icon',
              child: Icon(
                Icons.add_outlined,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ------------------------------------------------------------------ //
