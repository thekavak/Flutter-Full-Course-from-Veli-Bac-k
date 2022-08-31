import 'package:flutter/material.dart';

class NavigateLearnDart extends StatefulWidget {
  NavigateLearnDart({Key? key, this.isOkey = false}) : super(key: key);

  final bool isOkey;

  @override
  State<NavigateLearnDart> createState() => _NavigateLearnDartState();
}

class _NavigateLearnDartState extends State<NavigateLearnDart> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    // ModalRoute.of(context).settings.arguments
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOkey);
            },
            icon: Icon(Icons.check),
            label: widget.isOkey ? Text("Reddet") : Text("Onayla")),
      ),
    );
  }
}
