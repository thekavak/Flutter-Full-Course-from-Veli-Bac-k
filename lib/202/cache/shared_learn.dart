import 'package:flutter/material.dart';

class SharedLearn extends StatefulWidget {
  SharedLearn({Key? key}) : super(key: key);

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStateFul<SharedLearn> {
  int _currentValue = 0;

  void onChangeValue(String value) {
    final _value = int.tryParse(value);

    if (_value != null) {
      setState(() { 
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentValue.toString()),
      ),
      body: TextField(
        onChanged: (value) {
          onChangeValue(value);
        },
      ),
    );
  }
}

abstract class LoadingStateFul<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
