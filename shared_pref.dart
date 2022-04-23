// --------------------------------------------------------------- //

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyAppSharedPref());
}

class MyAppSharedPref extends StatelessWidget {
  const MyAppSharedPref({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppSharedPrefPage(),
    );
  }
}

class MyAppSharedPrefPage extends StatefulWidget {
  const MyAppSharedPrefPage({Key? key}) : super(key: key);

  @override
  State<MyAppSharedPrefPage> createState() => _MyAppSharedPrefPageState();
}

class _MyAppSharedPrefPageState extends State<MyAppSharedPrefPage> {
  String? getMyText;

  savePref(String myText) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString('myText', myText);
  }

  getPref() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    setState(() {
      getMyText = _preferences.getString('myText');
    });
  }

  deletePref() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.clear();
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Shared Pref'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getMyText == null ? 'Data Empty' : getMyText!,
              style: const TextStyle(fontSize: 35),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () {
                  savePref('www.pohonti.com');
                  getPref();
                },
                child: const Text(
                  'Press Here to Save Data',
                  style: TextStyle(
                      fontSize: 20, decoration: TextDecoration.underline),
                )),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  deletePref();
                  getPref();
                },
                child: const Text(
                  'Press Here to Delete Data',
                  style: TextStyle(
                      fontSize: 20, decoration: TextDecoration.underline),
                ))
          ],
        ),
      ),
    );
  }
}

// --------------------------------------------------------------- //