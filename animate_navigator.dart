// -------------------------------------------------------- //

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyAppAnimate1());
}

class MyAppAnimate1 extends StatelessWidget {
  const MyAppAnimate1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppAnimate1Page(),
    );
  }
}

class MyAppAnimate1Page extends StatelessWidget {
  const MyAppAnimate1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'First Page Flutter',
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const MyAppAnimate2Page(),
                          type: PageTransitionType.rightToLeft));
                },
                child: const Text(
                  'Press to next page',
                ))
          ],
        ),
      ),
    );
  }
}

class MyAppAnimate2Page extends StatelessWidget {
  const MyAppAnimate2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Second Page Flutter',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to first page'))
          ],
        ),
      ),
    );
  }
}

// -------------------------------------------------------- //
