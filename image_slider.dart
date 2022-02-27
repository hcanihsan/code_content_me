// --------------------------------------------------------------- //

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppImageSlider());
}

class MyAppImageSlider extends StatelessWidget {
  const MyAppImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppImageSliderScreen(),
    );
  }
}

class MyAppImageSliderScreen extends StatefulWidget {
  const MyAppImageSliderScreen({Key? key}) : super(key: key);

  @override
  _MyAppImageSliderScreenState createState() => _MyAppImageSliderScreenState();
}

class _MyAppImageSliderScreenState extends State<MyAppImageSliderScreen> {
  final List itemBanner = [const Banner1(), const Banner2(), const Banner3()];
  var controllerPage = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Banner App Flutter'),
      ),
      body: SizedBox(
        height: 210,
        child: PageView.builder(
            controller: controllerPage,
            scrollDirection: Axis.horizontal,
            itemCount: itemBanner.length,
            itemBuilder: (context, i) {
              return itemBanner[i];
            }),
      ),
    );
  }
}

class Banner1 extends StatelessWidget {
  const Banner1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      height: 149,
      margin: const EdgeInsets.only(right: 10),
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/banner_1.png'),
      )),
    );
  }
}

class Banner2 extends StatelessWidget {
  const Banner2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      height: 149,
      margin: const EdgeInsets.only(right: 10),
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/banner_2.png'),
      )),
    );
  }
}

class Banner3 extends StatelessWidget {
  const Banner3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      height: 149,
      margin: const EdgeInsets.only(right: 10),
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/banner_3.png'),
      )),
    );
  }
}

// --------------------------------------------------------------- //