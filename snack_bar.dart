// ------------------------------------------------------- //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppSnackBar());
}

class MyAppSnackBar extends StatelessWidget {
  const MyAppSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppSnackBarPage(),
    );
  }
}

class MyAppSnackBarPage extends StatelessWidget {
  const MyAppSnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Snack Bar'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.amberAccent,
                    content: Row(
                      children: const [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Welcome to Pohon TI Tutorial',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )));
              },
              child: const Text("Show Snack Bar"))),
    );
  }
}

// ------------------------------------------------------- //