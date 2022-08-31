import 'package:flutter/material.dart';

class NavigateDetail extends StatefulWidget {
  const NavigateDetail({Key? key, this.id}) : super(key: key);
  final String? id;
  @override
  State<NavigateDetail> createState() => _NavigateDetailState();
}

class _NavigateDetailState extends State<NavigateDetail> {
  late String _id;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _id = widget.id ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail' + _id.toString()),
      ),
    );
  }
}
