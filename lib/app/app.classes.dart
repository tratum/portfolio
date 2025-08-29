import 'dart:developer';
import 'dart:ui_web' as ui_web;
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/web.dart' as web;
import 'app.constants.dart';

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
          contentPadding: const EdgeInsets.only(
            top: 12,
            left: 22,
            right: 22,
            bottom: 22,
          ),
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
                vXtraSmall(context),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(imgPath, fit: BoxFit.fill),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ContentScrolling {
  // static Future<void> autoScroll({
  //   required double scrollPosition,
  //   required ScrollController conn,
  // }) {
  //   return conn.animateTo(
  //     scrollPosition,
  //     duration: const Duration(seconds: 2),
  //     curve: Curves.fastOutSlowIn,
  //   );
  // }
  static void autoScroll(GlobalKey key) {
    Future.delayed(Duration(milliseconds: 100), () {
      if (key.currentContext != null) {
        Scrollable.ensureVisible(
          key.currentContext!,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
      } else {
        log("The widget with the key $key is not available yet.");
      }
    });
  }
}

class WebNavigator {
  static Future<void> openUrl({required String url}) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw Exception('Could not launch $uri');
    }
  }

  static Future<void> launchEmail(String recipientEmail) async {
    final String subject = Uri.encodeComponent('Subject');
    final String body = Uri.encodeComponent('Body');
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
    ui_web.platformViewRegistry.registerViewFactory('pdf-iframe-view', (
      int viewId,
    ) {
      final iframe = web.HTMLIFrameElement()
        ..title = "Resume"
        ..width = width.toString()
        ..height = height.toString()
        ..style.width = '100%'
        ..style.height = '100%'
        ..name = 'Resume'
        ..src = 'https://tratum.github.io/cloud-asset-storage/pdf/Resume.pdf';

      return iframe;
    });
  }

  static void registerPdfIframeViewMobile(double height, double width) {
    ui_web.platformViewRegistry.registerViewFactory('pdf-iframe-view-mobile', (
      int viewId,
    ) {
      final iframe = web.HTMLIFrameElement()
        ..title = "Resume"
        ..width = width.toString()
        ..height = height.toString()
        ..style.width = '100%'
        ..style.height = '100%'
        ..name = 'Resume'
        ..src =
            'https://mozilla.github.io/pdf.js/web/viewer.html?file=https://tratum.github.io/cloud-asset-storage/pdf/Resume.pdf';
      return iframe;
    });
  }
}

class RotatingTechCircle extends StatefulWidget {
  final List<Widget> icons;
  final Widget centerWidget;
  final double size; // width and height of the widget
  final double radiusFactor; // fraction of half-size used as radius (0..1)
  final double iconSize;
  final int secondsPerRevolution; // seconds for one full circle
  final bool clockwise;
  final bool pauseOnHover;
  final bool spinIcons;
  final void Function(int index)? onTap;

  const RotatingTechCircle({
    super.key,
    required this.icons,
    required this.centerWidget,
    this.size = 300,
    this.radiusFactor = 0.7,
    this.iconSize = 40,
    this.secondsPerRevolution = 30,
    this.clockwise = true,
    this.pauseOnHover = false,
    this.spinIcons = true,
    this.onTap,
  });

  @override
  State<RotatingTechCircle> createState() => _RotatingTechCircleState();
}

class _RotatingTechCircleState extends State<RotatingTechCircle>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late VoidCallback _statusListener;

  @override
  void initState() {
    super.initState();

    // Duration for a single revolution:
    final duration = Duration(
      seconds: widget.secondsPerRevolution.clamp(1, 3600),
    );
    _controller = AnimationController(vsync: this, duration: duration);

    // Status listener that re-starts forward when it completes - allows pause/resume from the current value
    _statusListener = () {
      if (_controller.status == AnimationStatus.completed) {
        // loop manually from 0 to 1 to get continuous rotation
        _controller.forward(from: 0.0);
      }
    };
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.forward(from: 0.0);
      }
    });

    // Start the loop preserving the current value behavior
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.removeStatusListener(
      _statusListener as AnimationStatusListener,
    );
    _controller.dispose();
    super.dispose();
  }

  void _pause() {
    _controller.stop(canceled: false);
  }

  void _resume() {
    // continue animation from current value in a looping manner
    if (!_controller.isAnimating) {
      _controller.forward(from: _controller.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    final n = widget.icons.length;
    if (n == 0) return const SizedBox.shrink();

    Widget skills = SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          // current rotation angle (0..2π)
          final rotation =
              _controller.value * 2 * math.pi * (widget.clockwise ? 1.0 : -1.0);

          // radius
          final radius = (widget.size / 2.0) * widget.radiusFactor;

          // center
          final cx = widget.size / 2.0;
          final cy = widget.size / 2.0;

          List<Widget> positionedChildren = [];
          for (int i = 0; i < n; i++) {
            final angle = (2 * math.pi * i / n) + rotation;

            final x = cx + radius * math.cos(angle);
            final y = cy + radius * math.sin(angle);

            Widget icon = SizedBox(
              width: widget.iconSize,
              height: widget.iconSize,
              child: Center(child: widget.icons[i]),
            );

            // If keepIconsUpright, counter-rotate icon by -rotation so it stays readable
            if (widget.spinIcons) {
              icon = Transform.rotate(angle: -rotation, child: icon);
            }

            icon = GestureDetector(
              onTap: () => widget.onTap?.call(i),
              child: icon,
            );

            // place centered at (x,y)
            positionedChildren.add(
              Positioned(
                left: x - widget.iconSize / 2,
                top: y - widget.iconSize / 2,
                width: widget.iconSize,
                height: widget.iconSize,
                child: icon,
              ),
            );
          }
          return Stack(children: positionedChildren);
        },
      ),
    );

    // If pauseOnHover is true, wrap with MouseRegion to pause on hover (useful for web/desktop)
    if (widget.pauseOnHover) {
      skills = MouseRegion(
        onEnter: (_) => _pause(),
        onExit: (_) => _resume(),
        child: skills,
      );
    }

    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Stack(
        alignment: Alignment.center,
        children: [skills, widget.centerWidget],
      ),
    );
  }
}
