// ----------------------------------------------------- //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppContainerIMG());
}

class MyAppContainerIMG extends StatelessWidget {
  const MyAppContainerIMG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppContainerIMGPage(),
    );
  }
}

class MyAppContainerIMGPage extends StatelessWidget {
  const MyAppContainerIMGPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Container'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2018/07/19/10/20/blueberries-3548239_1280.jpg'), // Use AssetImage('assets/images/your_img') to Show Image From Local
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}

// ----------------------------------------------------- //