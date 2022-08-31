import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:veli_hoca/202/image_learn_202.dart';

class KartalView extends StatefulWidget {
  KartalView({Key? key}) : super(key: key);
  @override
  State<KartalView> createState() => _KartalViewState();
}

class _KartalViewState extends State<KartalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              // context.navigateToPage(ImageLearn202(), type: SlideType.TOP);
              'outlook.com'.launchWebsite;
            },
            child: Text(
              'data',
              style: context.textTheme.headline1,
            ),
          ),
          Container(
            height: context.dynamicHeight(0.2),
            color: Colors.amber,
          ).toVisible(true),
          AnimatedContainer(
            duration: context.durationLow,
            child: Text(
              'asdasdas',
              style: context.textTheme.headline1,
            ),
          ),
        ],
      ),
    );
  }
}
