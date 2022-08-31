import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatefulWidget {
  AppBarView({Key? key}) : super(key: key);

  @override
  State<AppBarView> createState() => _AppBarViewState();
}

class _AppBarViewState extends State<AppBarView> {
  final String _title = "Welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.chevron_left,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mark_as_unread,
              color: Colors.white,
            ),
          ),
          const Center(child: CircularProgressIndicator())
        ],
      ),
      body: null,
    );
  }
}
