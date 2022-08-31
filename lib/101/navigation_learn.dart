import 'package:flutter/material.dart';

import 'navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {},
          child: const Icon(Icons.golf_course),
        ),
        body: ListView.builder(
            itemCount: 6,
            itemBuilder: ((context, index) {
              return TextButton(
                onPressed: () async {
                  final response = await navigateToWidgetV2<bool>(
                      context,
                      NavigateLearnDart(
                        isOkey: selectedItems.contains(index),
                      ));

                  if (response is bool) {
                    addSelected(index, response);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Placeholder(
                    color: selectedItems.contains(index)
                        ? Colors.green
                        : Colors.redAccent,
                  ),
                ),
              );
            })));
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: ((context) {
          return widget;
        }),
        fullscreenDialog: true,
        settings: const RouteSettings()));
  }

  Future<T?> navigateToWidgetV2<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: ((context) {
          return widget;
        }),
        settings: const RouteSettings()));
  }
}
