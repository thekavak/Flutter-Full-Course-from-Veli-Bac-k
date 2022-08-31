import 'package:flutter/material.dart';
import 'package:veli_hoca/product/widget/button/answer_button.dart';
import 'package:veli_hoca/product/widget/callback_dropdown.dart';

import '../product/widget/button/loading_button.dart';

class CallBackLearn extends StatefulWidget {
  CallBackLearn({Key? key}) : super(key: key);
  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CallbackDropdown(
            onUserSelected: (CallbackUser user) {
              print(user.name);
            },
          ),
          AnswerButton(
            onNumber: (number) {
              return number % 3 == 0;
            },
          ),
          LoadingButton(
            title: 'Deneme',
            callback: () async {
              await Future.delayed(const Duration(seconds: 3));
            },
          )
        ],
      ),
    );
  }
}

class CallbackUser {
  final String name;
  final int id;

  CallbackUser(this.name, this.id);

//TODO: DUMMY DATA
  static List<CallbackUser> dummyUsers() {
    return [
      CallbackUser('hmz', 1),
      CallbackUser('hmz1', 2),
      CallbackUser('hmz2', 3),
    ];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallbackUser && other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
