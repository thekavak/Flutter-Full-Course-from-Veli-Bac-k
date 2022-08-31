import 'package:flutter/material.dart';

import 'state_learn_view_modal.dart';

class StateManageLearn extends StatefulWidget {
  StateManageLearn({Key? key}) : super(key: key);

  @override
  State<StateManageLearn> createState() => _StateManageLearnState();
}

class _StateManageLearnState extends StateLearnViewModal {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: isOpacity ? Colors.red : Colors.blueAccent,
          actions: []),
      floatingActionButton: FloatingActionButton(onPressed: changeVisible),
    );
  }
}
