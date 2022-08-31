import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veli_hoca/product/global/resource_context.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              context.read<ResourceContext>().model?.data?.length.toString() ??
                  ''),
        ),
        body: Column(
          children: [
            //  SizedBox(child: PngImage(name: ImageItems().appleWithBook)),
            Image.network(
              ImageItems().duck,
              errorBuilder: (context, error, stackTrace) => Text("hata"),
            )
          ],
        ));
  }
}

class ImageItems {
  final String appleWithBook =
      "red-apple-books-vector-illustration-colorful-145948838.jpeg";

  final String duck = "https://pbs.twimg.com/media/FXfEdzoUUAAw4GI?format=jpg";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_namewithpath, fit: BoxFit.fitWidth);
  }

  String get _namewithpath => 'assets/$name';
}
