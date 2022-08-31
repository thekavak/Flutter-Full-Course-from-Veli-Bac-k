import 'package:flutter/material.dart';

import 'container_sizedBox_learned.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      appBar: AppBar(),
      body: Column(),
      extendBody: true,
      /* bottomSheet: BottomSheet(
          onClosing: () {},
          builder: (context) {
            return Text('data');
          }),*/
      bottomNavigationBar: Container(
        decoration: ProjectContainerDecoration(),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.read_more),
              label: 'aaa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: 'bbbccc',
            ),
          ],
        ),
      ),
    );
  }
}
