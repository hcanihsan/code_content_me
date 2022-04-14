// ------------------------------------------------------- //

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(const MyAppShimmerLoading());
}

class MyAppShimmerLoading extends StatelessWidget {
  const MyAppShimmerLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppShimmerLoadingPage(),
    );
  }
}

class MyAppShimmerLoadingPage extends StatelessWidget {
  const MyAppShimmerLoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Shimmer Effect'),
      ),
      body: SizedBox(
        child: Shimmer.fromColors(
          baseColor: Colors.grey[400]!,
          highlightColor: Colors.white,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2021/09/23/05/30/strawberry-6648685_1280.jpg',
                      height: 80,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2021/09/23/05/30/strawberry-6648685_1280.jpg',
                      height: 80,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2021/09/23/05/30/strawberry-6648685_1280.jpg',
                      height: 80,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------- //