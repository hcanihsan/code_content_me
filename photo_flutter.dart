// ---------------------------------------------------- //

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() {
  runApp(const MyAppPhoto());
}

class MyAppPhoto extends StatelessWidget {
  const MyAppPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppPhotoPage(),
    );
  }
}

class MyAppPhotoPage extends StatelessWidget {
  const MyAppPhotoPage({Key? key}) : super(key: key);
  final String linkImage =
      'https://cdn.pixabay.com/photo/2015/06/01/05/58/shells-792912_1280.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Zoom In Out Image'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) =>
                        ZoomInOutPhoto(linkImageForZoom: linkImage)));
          },
          child: Image.network(linkImage),
        ),
      ),
    );
  }
}

class ZoomInOutPhoto extends StatelessWidget {
  final String linkImageForZoom;
  const ZoomInOutPhoto({Key? key, required this.linkImageForZoom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: PhotoView(imageProvider: NetworkImage(linkImageForZoom)),
      ),
    );
  }
}

// ---------------------------------------------------- //