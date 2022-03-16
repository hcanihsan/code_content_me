// ------------------------------------------------------ //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppFloatingButton());
}

class MyAppFloatingButton extends StatelessWidget {
  const MyAppFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppFloatingButtonPage3(),
    );
  }
}

// ------------------------------------------------------ // Floating Action Button In Center Position

class MyAppFloatingButtonPage extends StatelessWidget {
  const MyAppFloatingButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button Flutter'),
      ),
      floatingActionButton: const FloatingActionButton.extended(
        onPressed: null,
        backgroundColor: Colors.teal,
        label: Text('Unduh'),
        foregroundColor: Colors.white,
        icon: Icon(
          Icons.download,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: const Center(
        child: Text(
          'Pohon TI Tutorial',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

// ------------------------------------------------------ //

// ------------------------------------------------------ // Floating Action Button Extended

class MyAppFloatingButtonPage2 extends StatelessWidget {
  const MyAppFloatingButtonPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button Flutter'),
      ),
      floatingActionButton: const FloatingActionButton.extended(
        onPressed: null,
        backgroundColor: Colors.amberAccent,
        label: Text('Unduh'),
        foregroundColor: Colors.black,
        icon: Icon(
          Icons.download,
        ),
      ),
      body: const Center(
        child: Text(
          'Pohon TI Tutorial',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

// ------------------------------------------------------ //

// ------------------------------------------------------ // Floating Action Button Regular

class MyAppFloatingButtonPage3 extends StatelessWidget {
  const MyAppFloatingButtonPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button Flutter'),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.download,
        ),
      ),
      body: const Center(
        child: Text(
          'Pohon TI Tutorial',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

// ------------------------------------------------------ //

// ------------------------------------------------------ // Floating Action Button Regular With Background And Foreground Color

class MyAppFloatingButtonPage4 extends StatelessWidget {
  const MyAppFloatingButtonPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button Flutter'),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
        child: Icon(
          Icons.download,
        ),
      ),
      body: const Center(
        child: Text(
          'Pohon TI Tutorial',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

// ------------------------------------------------------ //
