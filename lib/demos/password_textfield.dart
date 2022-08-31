import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  PasswordTextField({Key? key, this.controller}) : super(key: key);

  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;
  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        autofillHints: [AutofillHints.password],
        keyboardType: TextInputType.visiblePassword,
        obscureText: _isSecure,
        obscuringCharacter: '#',
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: 'aaaaa',
          suffixIcon: visibilityIcon(),
        ));
  }

  IconButton visibilityIcon() {
    return IconButton(
        onPressed: () {
          _changeLoading();
        },
        icon: AnimatedCrossFade(
          firstChild: Icon(Icons.visibility_outlined),
          secondChild: Icon(Icons.visibility_off_outlined),
          crossFadeState:
              _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(milliseconds: 500),
        ));
    // icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off));
  }
}
