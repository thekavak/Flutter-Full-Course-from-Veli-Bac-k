import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();

  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 10,
            buildCounter: (BuildContext context,
                {required int? currentLength,
                bool? isFocused,
                int? maxLength}) {
              return animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            focusNode: focusNodeTextFieldOne,
            autofillHints: const [AutofillHints.email],
            inputFormatters: [TextProjectInputFormatter()._customFormatter],
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(16),
                prefix: Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(Icons.mail),
                ),
                border: OutlineInputBorder(),
                label: Text("Mail")),
          ),
          TextField(
            maxLength: 10,
            keyboardType: TextInputType.emailAddress,
            focusNode: focusNodeTextFieldTwo,
            textInputAction: TextInputAction.done,
            autofillHints: const [AutofillHints.email],
            inputFormatters: [TextProjectInputFormatter()._customFormatter],
            decoration: InputDecorations().emailDecoration,
          )
        ],
      ),
    );
  }

  AnimatedContainer animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(milliseconds: 100),
      width: 10.0 * (currentLength ?? 1),
      height: 10,
      color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
    );
  }
}

class TextProjectInputFormatter {
  final _customFormatter =
      TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    }
    return oldValue;
  });
}

class InputDecorations {
  final emailDecoration = const InputDecoration(
      contentPadding: EdgeInsets.all(16),
      border: OutlineInputBorder(),
      label: Text("Mail"),
      prefix: Padding(
        padding: EdgeInsets.only(right: 16.0),
        child: Icon(Icons.mail),
      ));
}
