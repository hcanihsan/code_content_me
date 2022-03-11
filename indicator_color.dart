// ----------------------------------------------- //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppStatusOrder());
}

class MyAppStatusOrder extends StatelessWidget {
  const MyAppStatusOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppStatusOrderPage(),
    );
  }
}

class MyAppStatusOrderPage extends StatefulWidget {
  const MyAppStatusOrderPage({Key? key}) : super(key: key);

  @override
  State<MyAppStatusOrderPage> createState() => _MyAppStatusOrderPageState();
}

class _MyAppStatusOrderPageState extends State<MyAppStatusOrderPage> {
  String status = 'Pesanan Diantar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Monitoring Status Pesanan'),
      ),
      body: Center(
        child: status == 'Pesanan Belum Dibuat'
            ? Text(status,
                style: const TextStyle(
                    backgroundColor: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold))
            : status == 'Pesanan Diproses'
                ? Text(status,
                    style: const TextStyle(
                        backgroundColor: Colors.yellow,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))
                : status == 'Pesanan Diantar'
                    ? Text(status,
                        style: const TextStyle(
                            backgroundColor: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.bold))
                    : status == 'Pesanan Selesai'
                        ? Text(status,
                            style: const TextStyle(
                                backgroundColor: Colors.blue,
                                fontSize: 30,
                                fontWeight: FontWeight.bold))
                        : Text(status,
                            style: const TextStyle(
                                backgroundColor: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
      ),
    );
  }
}

// ----------------------------------------------- //
