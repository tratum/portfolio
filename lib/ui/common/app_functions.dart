import 'package:flutter/material.dart';
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
            content: Column(
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Spacer(),
                    Icon(
                      Icons.close_rounded,
                      size: 18,
                      color: Color(0xff121212),
                    ),
                  ],
                ),
                Image.asset(
                  imgPath,
                  fit: BoxFit.contain,
                ),
              ],
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
      duration: const Duration(seconds: 1),
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
}
