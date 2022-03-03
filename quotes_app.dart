import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: BelajarStackWidget(),
  ));
}

class BelajarStackWidget extends StatefulWidget {
  const BelajarStackWidget({Key? key}) : super(key: key);

  @override
  _BelajarStackWidgetState createState() => _BelajarStackWidgetState();
}

class _BelajarStackWidgetState extends State<BelajarStackWidget> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1473081556163-2a17de81fc97?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            right: 40,
            top: 100,
            child: Text(date.hour.toString() + ':' + date.minute.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 45.0)),
          ),
          const Positioned(
            right: 40,
            top: 150,
            child: Text("Pohon TI Tutorial",
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 155,
              margin: const EdgeInsets.only(bottom: 40, right: 15, left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Text(
                      "Kutipan Hari Ini",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 16, bottom: 8),
                    child: Text(
                      "Tidur adalah salah satu cara untuk menyegarkan badan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                    child: Text(
                      "By Pohon TI",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
