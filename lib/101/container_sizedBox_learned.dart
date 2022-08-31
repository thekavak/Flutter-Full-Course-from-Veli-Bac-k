import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 120,
            height: 300,
            child: Text('x' * 30),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('asdas' * 50),
          ),
          Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              constraints: const BoxConstraints(maxHeight: 150, maxWidth: 100),
              child: Text('x' * 30),
              decoration: ProjectUtiliy.boxDecoration)
        ],
      ),
    );
  }
}

class ProjectUtiliy {
  static BoxDecoration boxDecoration = BoxDecoration(
    // color: Colors.redAccent,
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(colors: [Colors.redAccent, Colors.black]),
    boxShadow: [BoxShadow(color: Colors.white, offset: Offset(1, 2))],
    border: Border.all(width: 3.5),
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient:
                const LinearGradient(colors: [Colors.redAccent, Colors.black]),
            boxShadow: [
              const BoxShadow(color: Colors.white, offset: Offset(1, 2))
            ],
            border: Border.all(width: 3.5));
}
