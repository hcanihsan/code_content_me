// ---------------------------------------------------- //

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyAppToast());
}

class MyAppToast extends StatelessWidget {
  const MyAppToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppToastPage(),
    );
  }
}

class MyAppToastPage extends StatefulWidget {
  const MyAppToastPage({Key? key}) : super(key: key);

  @override
  State<MyAppToastPage> createState() => _MyAppToastPageState();
}

class _MyAppToastPageState extends State<MyAppToastPage> {
  late FToast fToast;

  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.indigo[300],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.person),
          SizedBox(
            width: 12.0,
          ),
          Text("Ini adalah Pesan Toast"),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 2),
    );
  }

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter App Toast')),
      body: Center(
        child: TextButton(
            onPressed: () {
              _showToast();
            },
            child: const Text(
              'Toast Button',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.underline),
            )),
      ),
    );
  }
}

// ---------------------------------------------------- //