// ----------------------------------------------------------- //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppFontLocal());
}

class MyAppFontLocal extends StatelessWidget {
  const MyAppFontLocal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Fonts Local',
      theme: ThemeData(fontFamily: 'Kalam'),
      home: const MyAppFontLocalPage(),
    );
  }
}

class MyAppFontLocalPage extends StatelessWidget {
  const MyAppFontLocalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Fonts'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'This is Kalam Light',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
            ),
            Text(
              'This is Kalam Regular',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 40),
            ),
            Text(
              'This is Kalam Bold',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}

// ----------------------------------------------------------- //