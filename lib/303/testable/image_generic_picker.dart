import 'package:flutter/material.dart';
import 'package:veli_hoca/product/core/image_upload.dart';

import '../../product/core/image_upload_manager.dart';

class ImagePickerGenericView extends StatefulWidget {
  const ImagePickerGenericView({Key? key}) : super(key: key);
  @override
  State<ImagePickerGenericView> createState() => _ImagePickerGenericViewState();
}

class _ImagePickerGenericViewState extends State<ImagePickerGenericView> {
  final _imageUploadManager = ImageUploadManager();
  late final ImageUploadCustomManager imageUploadCustomManager;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageUploadCustomManager = ImageUploadCustomManager(LibraryImageUpload());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              imageUploadCustomManager.cropWithFetch();
            },
            child: Text('Galery'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('normal'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Multiple'),
          ),
        ],
      ),
    );
  }
}
