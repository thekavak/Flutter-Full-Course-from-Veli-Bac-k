import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          TitleText(
            title: 'hamza',
          ),
          TitleText(
            title: 'ham1a',
          ),
          TitleText(
            title: 'ham3a',
          ),
          _ContainerBox(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class _ContainerBox extends StatelessWidget {
  const _ContainerBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.redAccent),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toString(),
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
