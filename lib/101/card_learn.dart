import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          _CardCustom(
            child: SizedBox(
              width: 500,
              height: 100,
              child: Center(child: Text('Ali')),
            ),
          )
        ],
      ),
    );
  }
}

class _CardCustom extends StatelessWidget {
  const _CardCustom({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10),
        color: Colors.blueGrey,
        // shape: StadiumBorder(),
        child: child);
  }
}
