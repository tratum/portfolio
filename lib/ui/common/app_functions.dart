import 'package:flutter/material.dart';
import 'package:tratum_portfolio/ui/common/ui_helpers.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageView {
  static Future<dynamic> showImageDialog({
    required BuildContext context,
    required String imgPath,
  }) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Column(
                  children: [
                    Stack(
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
                      ],
                    ),
                    verticalSpaceMedium,
                    Image.asset(
                      imgPath,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
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
  static Future<void> launchEmail(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $emailUri';
    }
  }
}
