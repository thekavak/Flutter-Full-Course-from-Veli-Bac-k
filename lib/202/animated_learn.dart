import 'package:flutter/material.dart';

class AnimatedLearn extends StatefulWidget {
  AnimatedLearn({Key? key}) : super(key: key);

  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}

class _AnimatedLearnState extends State<AnimatedLearn>
    with TickerProviderStateMixin {
  bool _isVisible = false;
  bool _isOpacity = false;

  late AnimationController animationController;
  //   animationController =  AnimationController(vsync: this, duration: Duration(seconds: 1));
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeVisible();
            animationController.animateTo(_isVisible ? 1 : 0);
          },
        ),
        body: Column(
          children: [
            ListTile(
              title: AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: _isOpacity ? 1 : 0,
                  child: Text(
                    "data",
                    style: context.textTheme().headline2,
                  )),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
              ),
            ),
            AnimatedDefaultTextStyle(
              child: Text(
                "data",
              ),
              style: (_isOpacity
                      ? context.textTheme().headline2
                      : context.textTheme().subtitle2) ??
                  TextStyle(),
              duration: const Duration(seconds: 1),
            ),
            SizedBox(
              height: 50,
            ),
            AnimatedIcon(
                icon: AnimatedIcons.menu_close, progress: animationController),
            SizedBox(
              height: 0,
            ),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: MediaQuery.of(context).size.height / 6,
              width: 250,
              color: _isOpacity ? Colors.red : Colors.teal,
            ),
            Expanded(
                child: Stack(
              children: [
                AnimatedPositioned(
                    top: 10,
                    curve: Curves.elasticInOut,
                    child: Text('awsdasdas'),
                    duration: Duration(seconds: 1))
              ],
            )),
            Expanded(
              child: AnimatedList(
                  initialItemCount: 3,
                  itemBuilder: ((context, index, animation) {
                    return Text('aaa');
                  })),
            )
          ],
        ));
  }

  AnimatedCrossFade placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(seconds: 1),
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}
