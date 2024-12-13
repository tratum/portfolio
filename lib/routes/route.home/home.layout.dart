import 'package:flutter/material.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';

import 'home.view.dart';

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
      quadHDLayout: DesktopHomeView(),
      fullHDLayout: DesktopHomeView(),
      hdLayout: DesktopHomeView(),
      sdLayout: DesktopHomeView(),
      largeMobileLayout: MobileHomeView(),
      mediumMobileLayout: MobileHomeView(),
      smallMobileLayout: MobileHomeView(),
      highResTabletLayout: TabletHomeView(),
      standardTabletLayout: TabletHomeView(),
    );
  }
}
