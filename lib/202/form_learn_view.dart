import 'package:flutter/material.dart';

class FormLearn extends StatefulWidget {
  FormLearn({Key? key}) : super(key: key);

  @override
  State<FormLearn> createState() => _FormLearnState();
}

class _FormLearnState extends State<FormLearn> {
  GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          print('a');
        },
        child: Column(children: [
          TextFormField(validator: FormFieldValidator().isNotEmpty),
          TextFormField(validator: FormFieldValidator().isNotEmpty),
          DropdownButtonFormField(items: const [
            DropdownMenuItem(
              child: Text('!'),
              value: 1,
            )
          ], onChanged: (value) {}),
          ElevatedButton(
              onPressed: () {
                if (_key.currentState?.validate() ?? false) {
                  print('okey');
                }
              },
              child: const Text('save'))
        ]),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage()._notEmpty;
  }
}

class ValidatorMessage {
  final String _notEmpty = 'Boş geçilemez';
}
