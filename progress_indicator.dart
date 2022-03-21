// ------------------------------------------------------- //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppProgress());
}

class MyAppProgress extends StatelessWidget {
  const MyAppProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppProgressPage(),
    );
  }
}

class MyAppProgressPage extends StatelessWidget {
  const MyAppProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Progress Indicator'),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(
                color: Colors.amberAccent,
                backgroundColor: Colors.indigo,
              ),
              SizedBox(
                height: 40,
              ),
              LinearProgressIndicator(
                color: Colors.green,
                backgroundColor: Colors.indigo,
                value: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------- //