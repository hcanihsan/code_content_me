// -------------------------------------------- //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppTextButton());
}

class MyAppTextButton extends StatelessWidget {
  const MyAppTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppTextButtonPage(),
    );
  }
}
// -------------------------------------------------------------- //

class MyAppTextButtonPage extends StatefulWidget {
  const MyAppTextButtonPage({Key? key}) : super(key: key);

  @override
  State<MyAppTextButtonPage> createState() => _MyAppTextButtonPageState();
}

class _MyAppTextButtonPageState extends State<MyAppTextButtonPage> {
  String _message = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Text Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _message,
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _message = 'Congratulations :)';
                  });
                },
                child: const Text(
                  'Press Here',
                  style: TextStyle(fontSize: 40, color: Colors.amber),
                )),

            // ----------------------------------->> For TextButton
            TextButton(
                onPressed: () {
                  setState(() {
                    _message = 'Congratulations 2 :) ';
                  });
                },
                child: const Text(
                  'Press Here',
                  style: TextStyle(fontSize: 40),
                ))
          ],
        ),
      ),
    );
  }
}

// -------------------------------------------- //