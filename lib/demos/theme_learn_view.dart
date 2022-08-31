import 'package:flutter/material.dart';

import 'password_textfield.dart';

class ThemeLearnView extends StatefulWidget {
  ThemeLearnView({Key? key}) : super(key: key);

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        CheckboxListTile(
          value: false,
          onChanged: (val) {
            print(val);
          },
          title: Text('Select Tile'),
        ),
        PasswordTextField()
      ]),
    );
  }
}
