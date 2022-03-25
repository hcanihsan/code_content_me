// ----------------------------------------------------- //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppStack());
}

class MyAppStack extends StatelessWidget {
  const MyAppStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppStackPage(),
    );
  }
}

class MyAppStackPage extends StatelessWidget {
  const MyAppStackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack Widget'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5))
              ],
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/06/01/05/58/shells-792912_1280.jpg'),
                  fit: BoxFit.cover)),
          width: 400,
          height: 400,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 350,
                  height: 220,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Travelling to Beach',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Pohon TI Tutorial',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 8.0, bottom: 20.0),
                        child: Text(
                          'Hallo semuanya, kembali lagi di blog saya, oke pada post saya kali ini tentunya masih membahas seputar flutter yang mana kali ini saya akan share bagaimana menampilkan gambar dengan menggunakan widget Container()',
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Read More',
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------- //