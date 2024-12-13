import 'package:flutter/material.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';

import 'home.layout.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWebLayout.buildPlatformSpecificLayout(
      context: context,
      quadHDLayout: DesktopHomeLayout(),
      fullHDLayout: DesktopHomeLayout(),
      hdLayout: DesktopHomeLayout(),
      sdLayout: DesktopHomeLayout(),
      largeMobileLayout: MobileHomeLayout(),
      mediumMobileLayout: MobileHomeLayout(),
      smallMobileLayout: MobileHomeLayout(),
      highResTabletLayout: TabletHomeLayout(),
      standardTabletLayout: TabletHomeLayout(),
    );
  }
}
