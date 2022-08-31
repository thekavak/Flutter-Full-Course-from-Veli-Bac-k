import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';
import 'package:mobx/mobx.dart';
import 'package:veli_hoca/product/core/image_upload.dart';
import '../viewmodel/image_upload_viewmodel.dart';

class ImageUploadMobx extends StatefulWidget {
  const ImageUploadMobx({Key? key}) : super(key: key);

  @override
  State<ImageUploadMobx> createState() => _ImageUploadMobxState();
}

class _ImageUploadMobxState extends State<ImageUploadMobx> {
  final String _imageUpload =
      "https://assets6.lottiefiles.com/packages/lf20_komemhfl.json";

  final _imageUploadViewModal = ImageUploadViewModel();
  final _imageUploadManager = ImageUploadManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _imageUploadViewModal.saveDataToService();
        },
      ),
      appBar: AppBar(
        title: Observer(
          builder: (_) {
            return Text(_imageUploadViewModal.downloadText);
          },
        ),
        actions: [
          Observer(
            builder: (_) {
              return _imageUploadViewModal.isLoading
                  ? CircularProgressIndicator()
                  : Container();
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Card(
                elevation: 10,
                child: FittedBox(
                  child: IconButton(
                      onPressed: () async {
                        _imageUploadViewModal.saveLocalFile(
                            await _imageUploadManager.fetchFromLib());
                      },
                      icon: Lottie.network(_imageUpload)),
                )),
          ),
          Divider(),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Observer(
                  builder: (_) {
                    return _imageUploadViewModal.imageUrl.isNotEmpty
                        ? Text(_imageUploadViewModal.imageUrl)
                        : Container();
                  },
                ),
                Observer(builder: (_) {
                  return _imageUploadViewModal.file != null
                      ? Image.file(_imageUploadViewModal.file!)
                      : Container();
                }),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
