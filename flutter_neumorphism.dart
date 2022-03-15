// ---------------------------------------------------- //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppButtonNeumorphism());
}

class MyAppButtonNeumorphism extends StatelessWidget {
  const MyAppButtonNeumorphism({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppButtonNeumorphismPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyAppButtonNeumorphismPage extends StatefulWidget {
  const MyAppButtonNeumorphismPage({Key? key}) : super(key: key);

  @override
  State<MyAppButtonNeumorphismPage> createState() =>
      _MyAppButtonNeumorphismPageState();
}

class _MyAppButtonNeumorphismPageState
    extends State<MyAppButtonNeumorphismPage> {
  bool _elevated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Neumorphism'),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: GestureDetector(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 50),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
                boxShadow: _elevated
                    ? [
                        BoxShadow(
                            color: Colors.grey[500]!,
                            offset: const Offset(4, 4),
                            blurRadius: 15,
                            spreadRadius: 1),
                        const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 15,
                            spreadRadius: 1)
                      ]
                    : null),
            child: Center(
              child: _elevated
                  ? const Icon(
                      Icons.power_settings_new_sharp,
                      size: 200,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.power_settings_new_sharp,
                      size: 200,
                      color: Colors.black,
                    ),
            ),
          ),
          onTap: () {
            setState(() {
              _elevated = !_elevated;
            });
          },
        ),
      ),
    );
  }
}

// ---------------------------------------------------- //
