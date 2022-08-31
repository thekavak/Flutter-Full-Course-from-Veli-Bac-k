import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:veli_hoca/202/packageLearn.dart';
import 'package:veli_hoca/202/theme/light_theme.dart';
import 'package:veli_hoca/303/feed_view.dart';
import 'package:veli_hoca/303/navigator/navigate_detail.dart';
import 'package:veli_hoca/303/navigator/navigate_home.dart';
import 'package:veli_hoca/demos/theme_learn_view.dart';
import 'package:veli_hoca/product/constant/project_items.dart';
import 'package:veli_hoca/product/global/resource_context.dart';
import 'package:veli_hoca/product/global/theme_notifier.dart';
import 'package:veli_hoca/product/navigator/navigator_routes.dart';

import '202/animated_learn.dart';
import '202/cache/shared_learn.dart';
import '202/form_learn_view.dart';
import '202/image_learn_202.dart';
import '202/services/service_learn_view.dart';
import '202/services/servis_post_learn_view.dart';
import '202/state_manage/state_manage_view.dart';
import '202/tab_learn.dart';
import '303/callback_learn.dart';
import '303/lottie_learn.dart';
import '303/mobx/view/mobix_image_upload.dart';
import '303/package/kartal.dart';
import '303/partofLearn.dart';
import '303/reqrest_resource/view/reqres_view.dart';
import '303/tabbar_advance.dart';
import 'opp_learn_view.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider(
        create: (_) => ResourceContext(),
      ),
      ChangeNotifierProvider<ThemeNotifier>(
        create: (context) => ThemeNotifier(),
      )
    ],
    builder: (context, child) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ProjectItems.prjectName,
        debugShowCheckedModeBanner: false,
        theme: context.watch<ThemeNotifier>().currentTheme,
        /* theme: ThemeData.dark().copyWith(
            tabBarTheme: const TabBarTheme(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.redAccent),
            inputDecorationTheme: const InputDecorationTheme(
                filled: true,
                fillColor: Colors.white,
                iconColor: Colors.redAccent,
                labelStyle: TextStyle(color: Colors.red),
                border: OutlineInputBorder()),
            cardTheme: CardTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
            )),*/
        //initialRoute: '/',
        //routes: NavigatorRotes().items
        home: TabbarAdvance());
  }
}
