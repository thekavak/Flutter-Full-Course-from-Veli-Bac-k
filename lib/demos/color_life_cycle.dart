import 'package:flutter/material.dart';
import 'package:veli_hoca/demos/color_demos_view.dart';

class ColorLifeCycle extends StatefulWidget {
  ColorLifeCycle({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycle> createState() => _ColorLifeCycleState();
}

class _ColorLifeCycleState extends State<ColorLifeCycle> {
  Color? _bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _bgColor = Colors.pink;
                });
              },
              icon: Icon(Icons.clear))
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(
              child: ColorDemosView(
            initialColor: _bgColor,
          ))
        ],
      ),
    );
  }
}
