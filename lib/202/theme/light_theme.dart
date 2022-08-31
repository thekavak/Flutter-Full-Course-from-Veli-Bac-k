import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  //productione çıkarken final ekle
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(Colors.redAccent)),
      buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(onPrimary: Colors.lightBlueAccent)),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Colors.amberAccent),
      textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1: TextStyle(fontSize: 22, color: _lightColor._textColor),
          ),
    );
  }
}

class _LightColor {
  final Color _textColor = Colors.black;
}
