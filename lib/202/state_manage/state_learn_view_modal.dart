import 'package:flutter/material.dart';
import 'package:veli_hoca/202/state_manage/state_manage_view.dart';

abstract class StateLearnViewModal extends State<StateManageLearn> {
  bool isVisible = false;
  bool isOpacity = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
      isOpacity = !isOpacity;
    });
  }
}
