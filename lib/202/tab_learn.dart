import 'package:flutter/material.dart';
import 'package:veli_hoca/101/icon_learn.dart';
import 'package:veli_hoca/101/image_learn.dart';

import '../303/feed_view.dart';

class TabLearn extends StatefulWidget {
  TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
          },
        ),
        bottomNavigationBar: BottomAppBar(
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.blueGrey,
              onTap: (int value) {
                print(value);
              },
              tabs: _MyTabViews.values
                  .map((e) => Tab(
                        text: e.name.toUpperCase(),
                      ))
                  .toList(),
            )),
        appBar: AppBar(
            /*  bottom: TabBar(tabs: [
            // ignore: prefer_const_constructors
            Tab(
              text: "Page1",
            ),
            const Tab(
              text: "Page2",
            )
          ])*/
            ),
        body: TabBarView(
            controller: _tabController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              FeedView(),
              IconLearn(),
              const ImageLearn(),
              IconLearn()
            ]),
      ),
    );
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}
