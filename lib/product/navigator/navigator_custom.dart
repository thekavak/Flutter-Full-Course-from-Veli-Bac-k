import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veli_hoca/303/lottie_learn.dart';
import 'package:veli_hoca/303/navigator/navigate_home.dart';

class NavigatorCustom {
  Route<dynamic>? onGeneraterRoute(RouteSettings settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(
        builder: (context) {
          return const NavigateHome();
        },
      );
    } else if (settings.name == '/homeDetail') {}
  }
}
