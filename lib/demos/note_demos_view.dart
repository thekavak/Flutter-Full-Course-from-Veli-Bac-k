import 'package:flutter/material.dart';

import '../101/image_learn.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({Key? key}) : super(key: key);

  final data = "Create Your First Note!";
  final desc = "Add Note";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems().horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBook),
            Text(data,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.blueAccent)),
            Padding(
              padding: PaddingItems().verticalPadding,
              child: _subTitle(
                title: desc * 8,
                align: TextAlign.start,
              ),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  child: Center(
                    child: Text('Create a Note'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class _subTitle extends StatelessWidget {
  const _subTitle(
      {Key? key, required this.title, this.align = TextAlign.center})
      : super(key: key);

  final String title;
  final TextAlign? align;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: align,
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: Colors.grey));
  }
}

class PaddingItems {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 20);
}
