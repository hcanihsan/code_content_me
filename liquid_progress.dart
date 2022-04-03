// ------------------------------------------------------------------------- //

import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

void main() {
  runApp(const MyAppLiquidProgress());
}

class MyAppLiquidProgress extends StatelessWidget {
  const MyAppLiquidProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppLiquidProgressPage(),
    );
  }
}

class MyAppLiquidProgressPage extends StatelessWidget {
  const MyAppLiquidProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liquid Progress Indicator'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child:
              _LoveLiquidProgressIndicator(), // --------- > For Love Liquid Progress

          // --------------------- > For Cirular Liquid Progress

          // LiquidCircularProgressIndicator(
          //   value: 0.50,
          //   backgroundColor: Colors.white,
          //   direction: Axis.vertical,
          //   valueColor: AlwaysStoppedAnimation(Colors.pink[500]!),
          //   center: const Text(
          //     'Loading ...',
          //     style: TextStyle(fontSize: 40),
          //   ),
          // ),
        ),
      ),

      // --------------> For Linear Liquid Progress

      // body: Center(
      //   child: SizedBox(
      //       width: 330,
      //       height: 50,
      //       child: LiquidLinearProgressIndicator(
      //         value: 0.50,
      //         backgroundColor: Colors.white,
      //         borderWidth: 5.0,
      //         borderColor: Colors.green,
      //         direction: Axis.vertical,
      //         valueColor: const AlwaysStoppedAnimation(Colors.green),
      //         center: const Text(
      //           'Loading ...',
      //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //         ),
      //       )),
      // ),
    );
  }
}

// ------------------------------------------------------------------------- //

class _LoveLiquidProgressIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoveLiquidProgressIndicatorState();
}

class _LoveLiquidProgressIndicatorState
    extends State<_LoveLiquidProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    );

    _animationController.addListener(() => setState(() {}));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final percentage = _animationController.value * 100;
    return Center(
      child: LiquidCustomProgressIndicator(
        value: _animationController.value,
        direction: Axis.vertical,
        backgroundColor: Colors.white,
        valueColor: const AlwaysStoppedAnimation(Colors.pink),
        shapePath: _buildHeartPath(),
        center: Text(
          "${percentage.toStringAsFixed(0)}%",
          style: const TextStyle(
            color: Color.fromARGB(255, 18, 25, 59),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

Path _buildHeartPath() {
  return Path()
    ..moveTo(55, 15)
    ..cubicTo(55, 12, 50, 0, 30, 0)
    ..cubicTo(0, 0, 0, 37.5, 0, 37.5)
    ..cubicTo(0, 55, 20, 77, 55, 95)
    ..cubicTo(90, 77, 110, 55, 110, 37.5)
    ..cubicTo(110, 37.5, 110, 0, 80, 0)
    ..cubicTo(65, 0, 55, 12, 55, 15)
    ..close();
}

// Source Reference  = https://github.com/JordanADavies/liquid_progress_indicator/tree/master/example //

// -------------------------------------------------------------------------- //