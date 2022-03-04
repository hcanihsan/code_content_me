import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppSwitchButton());
}

class MyAppSwitchButton extends StatelessWidget {
  const MyAppSwitchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppSwitchButtonPage(),
    );
  }
}

class MyAppSwitchButtonPage extends StatefulWidget {
  const MyAppSwitchButtonPage({Key? key}) : super(key: key);

  @override
  State<MyAppSwitchButtonPage> createState() => _MyAppSwitchButtonPageState();
}

class _MyAppSwitchButtonPageState extends State<MyAppSwitchButtonPage> {
  bool valueSwitched = false;
  String? resultValue = "Press The Switch";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Switch Button'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Switch(
              value: valueSwitched,
              onChanged: (value) {
                setState(() {
                  valueSwitched = value;

                  resultValue = valueSwitched == true
                      ? "Switch Button Active"
                      : "Switch Button Inactive";
                });
              },
              activeTrackColor: Colors.amberAccent,
              activeColor: Colors.amberAccent,
            ),
            Text(' $resultValue ')
          ],
        ),
      ),
    );
  }
}
