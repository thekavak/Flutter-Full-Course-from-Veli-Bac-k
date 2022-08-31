import 'package:flutter/material.dart';

class NavigateProfile extends StatefulWidget {
  const NavigateProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<NavigateProfile> createState() => _NavigateProfileState();
}

class _NavigateProfileState extends State<NavigateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROFİLE'),
      ),
    );
  }
}
