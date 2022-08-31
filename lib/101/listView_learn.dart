import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        FittedBox(
          child: Text(
            'Merhaba',
            style: Theme.of(context).textTheme.headline1,
            maxLines: 1,
          ),
        ),
        Container(
          height: 200,
          color: Colors.redAccent,
        ),
        Divider(),
        SizedBox(
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 200,
                width: 300,
                color: Colors.redAccent,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.redAccent,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
        FittedBox(
          child: Text(
            'Merhaba',
            style: Theme.of(context).textTheme.headline1,
            maxLines: 1,
          ),
        ),
        Container(
          height: 200,
          color: Colors.redAccent,
        ),
        Divider(),
        SizedBox(
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 200,
                width: 300,
                color: Colors.redAccent,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.redAccent,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        _ListDemo()
      ],
    ));
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('hello');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
