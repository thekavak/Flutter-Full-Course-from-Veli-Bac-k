import 'package:flutter/material.dart';
import 'package:veli_hoca/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final user1 = PostModel();
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'title', 'body');
    // user2.body = 'a';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
