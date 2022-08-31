import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  launchUrl(String _url) async {
    if (await canLaunchUrl(Uri.parse(_url))) {
      launchUrl(_url);
    }
  }
}
