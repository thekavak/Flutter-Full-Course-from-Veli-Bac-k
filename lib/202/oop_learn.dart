import 'dart:io';

import 'package:url_launcher/url_launcher.dart';
import 'package:veli_hoca/custom_exception.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);

  void toShare(String path) async {
    await launchUrl(Uri(path: path));
  }
}

class FileDownload implements IFileDownload {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    return null;
  }

  @override
  void toShare(String path) {
    // TODO: implement toShare
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

mixin ShareMixin on IFileDownload {
  toShowFile();
}
