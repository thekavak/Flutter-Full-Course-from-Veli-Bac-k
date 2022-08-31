import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:veli_hoca/303/mobx/model/image_upload_response.dart';
import 'package:veli_hoca/303/mobx/view/mobix_image_upload.dart';

import '../services/image_upload_service.dart';

part 'image_upload_viewmodel.g.dart';

class ImageUploadViewModel = _ImageUploadViewModelBase
    with _$ImageUploadViewModel;

abstract class _ImageUploadViewModelBase with Store {
  @observable
  File? file;

  @observable
  String downloadText = '';

  @observable
  String imageUrl = '';

  @observable
  bool isLoading = false;
  static const _baseUrl =
      'https://firebasestorage.googleapis.com/v0/b/fluttertr-ead5c.appspot.com/o/';

  ImageUploadService imageUploadService =
      ImageUploadService(Dio(BaseOptions(baseUrl: _baseUrl)));

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  void saveLocalFile(XFile? file) {
    if (file == null) return;
    this.file = File(file.path);
  }

  @action
  updateDownloadText(int sent, int total) {
    downloadText = '$sent / $total';
  }

  @action
  void updateImageUrl(ImageUploadResponse? response) {
    if (response == null) return;

    imageUrl = response.name!;
  }

  Future<void> saveDataToService() async {
    if (file == null) return;
    changeLoading();
    final response = await imageUploadService.uploadToImageServer(
      await file!.readAsBytes(),
      'thekavak',
      onSendProgress: updateDownloadText,
    );
    updateImageUrl(response);
  }
}
