import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppRichText());
}

class MyAppRichText extends StatelessWidget {
  const MyAppRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppRichTextPage(),
    );
  }
}

class MyAppRichTextPage extends StatelessWidget {
  const MyAppRichTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter App'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Align(
            alignment: Alignment.center,
            child: RichText(
                text: const TextSpan(style: TextStyle(fontSize: 40), children: [
              TextSpan(
                text: "Pohon ",
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline),
              ),
              TextSpan(
                text: "TI ",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "Tutorial",
                style: TextStyle(color: Colors.green),
              )
            ])),
          )
        ],
      ),
    );
  }
}
