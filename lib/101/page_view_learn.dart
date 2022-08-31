import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController =
      PageController(initialPage: 0, viewportFraction: 0.98);

  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(_currentPageIndex.toString()),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: _DurationUtiliy._durationLow,
                  curve: Curves.slowMiddle);
            },
            child: Icon(Icons.chevron_left),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtiliy._durationLow,
                  curve: Curves.slowMiddle);
            },
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        padEnds: false,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.teal,
          )
        ],
      ),
    );
  }
}

class _DurationUtiliy {
  static const _durationLow = Duration(seconds: 1);
}
