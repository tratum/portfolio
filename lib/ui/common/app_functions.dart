import 'dart:html';
import 'dart:ui_web';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../common/ui_helpers.dart';

class ImageView {
  static Future<dynamic> showImageDialog({
    required BuildContext context,
    required String imgPath,
  }) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            contentPadding:
                const EdgeInsets.only(top: 12, left: 22, right: 22, bottom: 22),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close_rounded,
                        size: 26,
                        color: Color(0xff121212),
                      ),
                    ),
                  ),
                  verticalSpaceSmall,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      imgPath,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class ContentScrolling {
  static Future<void> autoScroll({
    required double scrollPosition,
    required ScrollController conn,
  }) {
    return conn.animateTo(
      scrollPosition,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }
}

class WebNavigator {
  static Future<void> openUrl({
    required String url,
  }) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw Exception('Could not launch $uri');
    }
  }

  static Future<void> launchEmail(String recipientEmail) async {
    // final Uri emailUri = Uri(
    //   scheme: 'mailto',
    //   path: email,
    // );
    // if (await canLaunchUrl(emailUri)) {
    //   await launchUrl(emailUri);
    // } else {
    //   throw 'Could not launch $emailUri';
    // }
    final String subject = Uri.encodeComponent('Your Subject Here');
    final String body = Uri.encodeComponent('Your email body here');
    final String url = 'mailto:$recipientEmail?subject=$subject&body=$body';
    final Uri email = Uri.parse(url);
    if (await canLaunchUrl(email)) {
      await launchUrl(email);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class PdfViewer {
  static void registerPdfIframeView(double height, double width) {
    platformViewRegistry.registerViewFactory(
      'pdf-iframe-view',
      (int viewId) => IFrameElement()
        ..width = width.toString()
        ..height = height.toString()
        ..style.width = '100%'
        ..style.height = '100%'
        ..name = 'Resume'
        ..src = 'https://tratum.github.io/cloud-asset-storage/pdf/Resume.pdf',
    );
  }

  static void registerPdfIframeViewMobile(double height, double width) {
    platformViewRegistry.registerViewFactory(
      'pdf-iframe-view-mobile',
      (int viewId) => IFrameElement()
        ..width = width.toString()
        ..height = height.toString()
        ..style.width = '100%'
        ..style.height = '100%'
        ..name = 'Resume'
        ..src =
            'https://docs.google.com/gview?url=https://tratum.github.io/cloud-asset-storage/pdf/Resume.pdf&embedded=true',
    );
  }
}
