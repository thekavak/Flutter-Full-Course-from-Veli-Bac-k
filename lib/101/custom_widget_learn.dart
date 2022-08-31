import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  CustomWidgetLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(title: "Food", onPressed: () {}),
              ),
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget with _ColorsUtility {
  CustomButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  final String title;
  //final VoidCallback callback;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: redAccent, shape: StadiumBorder()),
      child: Center(
        child: Padding(
          padding: _ProjectPadding().buttonPadding,
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: white, fontWeight: FontWeight.bold)),
        ),
      ),
      onPressed: () {},
    );
  }
}

class _ColorsUtility {
  final Color redAccent = Colors.redAccent;
  final Color white = Colors.white;
}

class _ProjectPadding {
  final EdgeInsets buttonPadding = EdgeInsets.all(12);
}
