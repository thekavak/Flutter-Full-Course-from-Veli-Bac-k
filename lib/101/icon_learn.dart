import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconLearn extends StatelessWidget {
  IconLearn({Key? key}) : super(key: key);
  IconSizes sizes = IconSizes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mark_as_unread,
              color: IconColors().froly,
              size: IconSizes.smallSize2x,
            ),
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double smallSize = 40;
  static const double smallSize2x = 80;
}

class IconColors {
  final Color froly = const Color(0XFFED617A);
}
