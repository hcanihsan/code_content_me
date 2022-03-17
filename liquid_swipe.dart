// -------------------------------------------------------- //

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyAppLiquidSwipe());
}

class MyAppLiquidSwipe extends StatelessWidget {
  const MyAppLiquidSwipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppLiquidSwipePage(),
    );
  }
}

class MyAppLiquidSwipePage extends StatelessWidget {
  MyAppLiquidSwipePage({Key? key}) : super(key: key);

  final itemPages = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.star,
            size: 100,
            color: Colors.yellow,
          ),
          SizedBox(width: 20),
          Text(
            'Rate Us',
            style: TextStyle(fontSize: 40),
          )
        ],
      ),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.orange[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.mail,
            color: Colors.white,
            size: 100,
          ),
          SizedBox(width: 20),
          Text(
            'Contact Us',
            style: TextStyle(fontSize: 40),
          )
        ],
      ),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.airlines,
            color: Colors.deepOrange,
            size: 50,
          ),
          SizedBox(width: 20),
          Text(
            'Fly Away With Me',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
          waveType: WaveType.circularReveal,
          pages:
              itemPages), // --- > Change wayeType:WaveType.liquidReveal to make liquid swipe
    );
  }
}

// -------------------------------------------------------- //