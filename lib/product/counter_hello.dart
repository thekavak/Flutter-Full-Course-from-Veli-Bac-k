import 'package:flutter/material.dart';

import 'languages/items.dart';

class CounterHelloBottom extends StatefulWidget {
  const CounterHelloBottom({Key? key}) : super(key: key);

  @override
  State<CounterHelloBottom> createState() => _CounterHelloBottomState();
}

class _CounterHelloBottomState extends State<CounterHelloBottom> {
  int _counterCustom = 0;
  final String _welcomeTitle = LanguageItems.welcomeTitle;
  _updateCounter() {
    setState(() {
      ++_counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _updateCounter,
        child: Text('$_welcomeTitle $_counterCustom'));
  }
}
