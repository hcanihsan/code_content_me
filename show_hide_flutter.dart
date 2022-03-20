// --------------------------------------------------------------- //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppShowHide());
}

class MyAppShowHide extends StatelessWidget {
  const MyAppShowHide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppShowHidePage(),
    );
  }
}

class MyAppShowHidePage extends StatefulWidget {
  const MyAppShowHidePage({Key? key}) : super(key: key);

  @override
  State<MyAppShowHidePage> createState() => _MyAppShowHidePageState();
}

class _MyAppShowHidePageState extends State<MyAppShowHidePage> {
  bool _isOnPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Hide Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isOnPressed = !_isOnPressed;
                });
              },
              child: Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Halaman Utama',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: _isOnPressed
                            ? const Icon(
                                Icons.arrow_downward_rounded,
                                color: Colors.white,
                                size: 25,
                              )
                            : const Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.white,
                                size: 25,
                              ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Visibility(
                visible: _isOnPressed,
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Congratulations :D',
                    style: TextStyle(fontSize: 30),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

// --------------------------------------------------------------- //