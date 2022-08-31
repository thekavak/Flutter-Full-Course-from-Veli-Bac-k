import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:veli_hoca/202/packages/launchManager.dart';

import 'packages/loadingBar.dart';

class PackageLearn extends StatefulWidget {
  PackageLearn({Key? key}) : super(key: key);

  @override
  State<PackageLearn> createState() => _PackageLearnState();
}

class _PackageLearnState extends State<PackageLearn>
    with TickerProviderStateMixin, LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launchUrl('x');
        },
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'data',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            LoadingBar(),
            TextButton(onPressed: () {}, child: Text('aa'))
          ],
        ),
      ),
    );
  }
}
