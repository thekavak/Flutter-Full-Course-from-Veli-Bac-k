import 'package:flutter/material.dart';
import 'package:veli_hoca/303/generic_learn.dart';

class GenericuserCard extends StatefulWidget {
  const GenericuserCard({Key? key, required this.model}) : super(key: key);
  final GenericUser model;
  @override
  State<GenericuserCard> createState() => _GenericuserCardState();
}

class _GenericuserCardState extends State<GenericuserCard> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.model.name);
  }
}

class GenericuserHighCard extends StatefulWidget {
  const GenericuserHighCard({Key? key, required this.items}) : super(key: key);
  final List<String> items;
  @override
  State<GenericuserCard> createState() => _GenericuserCardState();
}

class _GenericuserHighCardState extends State<GenericuserHighCard> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.items.join(','));
  }
}
