import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieLearn extends StatefulWidget {
  LottieLearn({Key? key}) : super(key: key);
  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

class _LottieLearnState extends State<LottieLearn>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    navigateToHome();
  }

  navigateToHome() {
    Future.delayed(Duration(seconds: 3));

    Navigator.of(context).pushNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InkWell(
        onTap: () {
          controller.animateTo(isLight ? 0.5 : 1);
          isLight = !isLight;
        },
        child: Lottie.network(
            'https://assets7.lottiefiles.com/packages/lf20_qyinejy3.json',
            repeat: false,
            controller: controller),
      ),
    );
  }
}
