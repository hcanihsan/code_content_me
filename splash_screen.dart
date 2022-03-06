// ---------------------------------------------------------------------- //

import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppSplashScreen());
}

class MyAppSplashScreen extends StatelessWidget {
  const MyAppSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppSplashScreenPage(),
    );
  }
}

class MyAppSplashScreenPage extends StatefulWidget {
  const MyAppSplashScreenPage({Key? key}) : super(key: key);

  @override
  State<MyAppSplashScreenPage> createState() => _MyAppSplashScreenPageState();
}

class _MyAppSplashScreenPageState extends State<MyAppSplashScreenPage> {
  timer() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, navIntro);
  }

  void navIntro() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const SecondPage()));
  }

  @override
  void initState() {
    super.initState();
    timer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2019/05/19/23/47/clouds-4215608_1280.jpg'),
                fit: BoxFit.cover)),
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Flutter Splash Screen'),
      ),
      body: const Center(
        child: Text(
          'Hello Friends',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------- //