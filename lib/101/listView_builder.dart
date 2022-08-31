import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 32,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            SizedBox(
              height: 200,
              child: Placeholder(
                color: Colors.redAccent,
              ),
            ),
            Text('$index')
          ],
        );
      }),
    ));
  }
}
