import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: ProjectPadding.pagePaddingVertical,
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.redAccent,
            child: const Text('asdasd'),
          ),
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 18.0);
}
