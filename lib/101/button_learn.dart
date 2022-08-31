import 'package:flutter/material.dart';

class ButtonLearn extends StatefulWidget {
  ButtonLearn({Key? key}) : super(key: key);

  @override
  State<ButtonLearn> createState() => _ButtonLearnState();
}

class _ButtonLearnState extends State<ButtonLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () {},
              child: const Text('SAVE'),
              style: ButtonStyle(
                  //  backgroundColor:   MaterialStateProperty.all<Color>(Colors.red),
                  //
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.redAccent;
                }
              }))),
          const ElevatedButton(onPressed: null, child: Text('SAVE')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit_sharp)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add_a_photo),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.blueGrey),
            onPressed: () {},
            child: const SizedBox(
                width: 200, child: const Icon(Icons.add_a_photo)),
          ),
          const InkWell(child: Text('data')),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}


//Borders:
//CircleBorder(); RoundedRectangleBorder()