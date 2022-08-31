import 'package:flutter/material.dart';

class NavigateHome extends StatefulWidget {
  const NavigateHome({
    Key? key,
  }) : super(key: key);

  @override
  State<NavigateHome> createState() => _NavigateHomeState();
}

class _NavigateHomeState extends State<NavigateHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          Navigator.of(context).pushNamed('/homeDetail');
        },
        child: Text('Detail'),
      ),
      appBar: AppBar(
        title: Text('hOME'),
      ),
    );
  }
}
