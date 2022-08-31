import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:veli_hoca/303/mobx/model/image_upload_response.dart';

class ImageUploadService {
  final Dio dio;

  ImageUploadService(this.dio);
// https://firebasestorage.googleapis.com/v0/b/fluttertr-ead5c.appspot.c
  Future<ImageUploadResponse?> uploadToImageServer(
      Uint8List byteArray, String name,
      {void Function(int, int)? onSendProgress}) async {
    var formData = FormData.fromMap({
      'file': await MultipartFile.fromBytes(byteArray),
    });

    final response = await dio.post('full/$name.png',
        data: formData, onSendProgress: onSendProgress);

    if (response.statusCode == HttpStatus.ok) {
      return ImageUploadResponse.fromJson(response.data);
    }
    return null;
  }
}
