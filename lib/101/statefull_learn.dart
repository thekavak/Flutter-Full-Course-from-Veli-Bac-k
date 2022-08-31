import 'package:flutter/material.dart';
import 'package:veli_hoca/product/languages/items.dart';

import '../product/counter_hello.dart';

class StatefullLearn extends StatefulWidget {
  StatefullLearn({Key? key}) : super(key: key);
  //Dışarıyla haberleştiğimiz kısım
  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  final String _welcomeTitle = LanguageItems.welcomeTitle;
  /*void incremenValue() {
    setState(() {
      _countValue += 1;
    });
  }

  void deincrementValue() {
    setState(() {
      _countValue -= 1;
    });
  }*/

  _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue += 1;
    } else {
      _countValue -= 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          increaseButton(),
          decreaseButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Placeholder(),
          CounterHelloBottom()
        ],
      ),
    );
  }

  FloatingActionButton increaseButton() {
    //print("burada");
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: Icon(Icons.add_box_outlined),
    );
  }

  Padding decreaseButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: Icon(Icons.remove_circle_outline),
      ),
    );
  }
}
