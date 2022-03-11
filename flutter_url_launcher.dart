// -------------------------------------------------------- //

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyAppFlutterLauncher());
}

class MyAppFlutterLauncher extends StatelessWidget {
  const MyAppFlutterLauncher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppFlutterLauncherPage(),
    );
  }
}

class MyAppFlutterLauncherPage extends StatefulWidget {
  const MyAppFlutterLauncherPage({Key? key}) : super(key: key);

  @override
  State<MyAppFlutterLauncherPage> createState() =>
      _MyAppFlutterLauncherPageState();
}

class _MyAppFlutterLauncherPageState extends State<MyAppFlutterLauncherPage> {
  final String _link = 'https://www.pohonti.com/';

  void _url() async {
    if (!await launch(_link)) throw 'URL tidak bisa diakses $_link';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter URL Launcher'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _url();
            },
            child: const Text('Click Here')),
      ),
    );
  }
}

// -------------------------------------------------------- //

