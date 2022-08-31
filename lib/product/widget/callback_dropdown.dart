import 'package:flutter/material.dart';
import 'package:veli_hoca/303/callback_learn.dart';

class CallbackDropdown extends StatefulWidget {
  CallbackDropdown({Key? key, required this.onUserSelected}) : super(key: key);

  void Function(CallbackUser user) onUserSelected;
  @override
  State<CallbackDropdown> createState() => _CallbackDropdownState();
}

class _CallbackDropdownState extends State<CallbackDropdown> {
  CallbackUser? _user;

  void updateUser(CallbackUser? item) {
    setState(() {
      _user = item;
    });

    if (_user != null) {
      widget.onUserSelected.call(_user!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallbackUser>(
        value: _user,
        items: CallbackUser.dummyUsers().map((e) {
          return DropdownMenuItem(
            child: Text(e.name),
            value: e,
          );
        }).toList(),
        onChanged: updateUser);
  }
}
