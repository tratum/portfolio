import 'package:flutter/material.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';

import '404.view.dart';

class ErrorView extends StatefulWidget {
  const ErrorView({super.key});

  @override
  State<ErrorView> createState() => _ErrorViewState();
}

class _ErrorViewState extends State<ErrorView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWebLayout.buildPlatformSpecificLayout(
      context: context,
      quadHDLayout: desktop404View(context),
      fullHDLayout: desktop404View(context),
      hdLayout: desktop404View(context),
      sdLayout: desktop404View(context),
      largeMobileLayout: mobile404View(context),
      mediumMobileLayout: mobile404View(context),
      smallMobileLayout: mobile404View(context),
      highResTabletLayout: tablet404View(context),
      standardTabletLayout: tablet404View(context),
    );
  }
}
