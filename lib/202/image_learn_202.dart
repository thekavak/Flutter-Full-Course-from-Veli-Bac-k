import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  ImageLearn202({Key? key}) : super(key: key);

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [ImagePaths.asdas.toWidget()],
      ),
    );
  }
}

enum ImagePaths { asdas }

extension ImagePathExtension on ImagePaths {
  String path() {
    return 'assets/$name.jpeg';
  }

  Widget toWidget() {
    return Image.asset(ImagePaths.asdas.path());
  }
}
