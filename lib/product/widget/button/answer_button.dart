import 'dart:math';

import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  AnswerButton({Key? key, this.onNumber}) : super(key: key);

  final bool Function(int number)? onNumber;
  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  //bana bir random sayı ver, bu sayıyı kontrol edip bir cvap vericem
  // bu cevaba göre butonun rengini güncelle
  // eğer doğru ise yesil yanlis ise kırmızı yap

  Color? _bgColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: _bgColor),
      child: Text('data'),
      onPressed: () {
        final result = Random().nextInt(10);
        final response = widget.onNumber?.call(result) ?? false;

        setState(() {
          _bgColor = response ? Colors.greenAccent : Colors.redAccent;
        });
      },
    );
  }
}
