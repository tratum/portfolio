import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';

import '../../app/app.constants.dart';
import '../../app/app.functions.dart';
import '../../app/app.hover.extensions.dart';
import '../../routes/route.home/home.layout.tablet.dart';
import 'home.layout.desktop.dart';
import 'home.layout.mobile.dart';

class DesktopHomeLayout extends StatefulWidget {
  const DesktopHomeLayout({super.key});

  @override
  State<DesktopHomeLayout> createState() => _DesktopHomeLayoutState();
}

class _DesktopHomeLayoutState extends State<DesktopHomeLayout> {
  final ScrollController _sController = ScrollController();
  final GlobalKey _homeSectionKey = GlobalKey();
  final GlobalKey _techStackSectionKey = GlobalKey();
  final GlobalKey _aboutMeSectionKey = GlobalKey();
  final GlobalKey _projectSectionKey = GlobalKey();
  final GlobalKey _resumeSectionKey = GlobalKey();
  final GlobalKey _contactSectionKey = GlobalKey();
  final GlobalKey _footerSectionKey = GlobalKey();

  bool _scroller = true;

  bool _isFooterVisible() {
    final position = _sController.position.pixels;
    final maxScroll = _sController.position.maxScrollExtent;
    return position >= (maxScroll - 50);
  }

  void _autoScroll(GlobalKey key) {
    Future.delayed(Duration(milliseconds: 100), () {
      if (key.currentContext != null) {
        Scrollable.ensureVisible(
          key.currentContext!,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        log("The widget with the key $key is not available yet.");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFfafafa),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
              child: ResponsiveWebLayout.buildDesktopLayout(
                context: context,
                quadHDLayout: ListView(
                  cacheExtent: double.infinity,
                  controller: _sController,
                  children: [
                    DesktopHomeSection(
                      key: _homeSectionKey,
                      headerFontSize: 86,
                      subTextFontSize: 48,
                      iconSize: 56,
                      profileWidth: 800,
                      profileHeight: 840,
                    ),
                    DesktopTechStackSection(
                      key: _techStackSectionKey,
                      sectionSpace: 90,
                    ),
                    DesktopAboutMeSection(
                      key: _aboutMeSectionKey,
                      sectionSpace: 200,
                    ),
                    DesktopProjectSection(
                      key: _projectSectionKey,
                      sectionSpace: 200,
                      textToProjectSpacing: verticalSpace(90),
                    ),
                    DesktopResume(
                      key: _resumeSectionKey,
                      sectionSpace: 320,
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                      headingFontSize: 42,
                    ),
                    DesktopContactSection(
                      key: _contactSectionKey,
                      sectionSpace: 200,
                    ),
                    DesktopFooterSection(
                      key: _footerSectionKey,
                    ),
                  ],
                ),
                fullHDLayout: ListView(
                  cacheExtent: double.infinity,
                  controller: _sController,
                  children: [
                    DesktopHomeSection(
                      key: _homeSectionKey,
                      subTextFontSize: 42,
                      profileWidth: 680,
                      profileHeight: 700,
                    ),
                    DesktopTechStackSection(
                      key: _techStackSectionKey,
                      sectionSpace: 90,
                      headingFontSize: 42,
                    ),
                    DesktopAboutMeSection(
                      key: _aboutMeSectionKey,
                      sectionSpace: 200,
                      headingFontSize: 42,
                      subTextFontSize: 36,
                    ),
                    DesktopProjectSection(
                      key: _projectSectionKey,
                      sectionSpace: 200,
                      imgWidth: 800,
                      imgHeight: 500,
                      headingFontSize: 42,
                      subHeadingFontSize: 38,
                      projectHeadingFontSize: 40,
                      projectSubTextFontSize: 36,
                      projectSpacing: verticalSpaceMega,
                      textToProjectSpacing: verticalSpace(90),
                    ),
                    DesktopResume(
                      key: _resumeSectionKey,
                      sectionSpace: 320,
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                      headingFontSize: 42,
                    ),
                    DesktopContactSection(
                      key: _contactSectionKey,
                      sectionSpace: 250,
                      headingFontSize: 42,
                      imgHeight: 42,
                      imgWidth: 42,
                    ),
                    DesktopFooterSection(
                      key: _footerSectionKey,
                    ),
                  ],
                ),
                hdLayout: ListView(
                  cacheExtent: double.infinity,
                  controller: _sController,
                  children: [
                    DesktopHomeSection(
                      key: _homeSectionKey,
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      iconSize: 46,
                      subTextFontSize: 38,
                      profileWidth: 680,
                      profileHeight: 730,
                    ),
                    DesktopTechStackSection(
                      key: _techStackSectionKey,
                      sectionSpace: 40,
                      headingFontSize: 42,
                    ),
                    DesktopAboutMeSection(
                      key: _aboutMeSectionKey,
                      sectionSpace: 200,
                      headingFontSize: 42,
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      imgWidth: 650,
                      imgHeight: 600,
                      subTextFontSize: 28,
                    ),
                    DesktopProjectSection(
                      key: _projectSectionKey,
                      sectionSpace: 200,
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      headingFontSize: 42,
                      subHeadingFontSize: 38,
                      projectHeadingFontSize: 32,
                      projectSubTextFontSize: 28,
                      imgWidth: 620,
                      projectSpacing: verticalSpaceMassive,
                      textToProjectSpacing: verticalSpace(90),
                    ),
                    DesktopResume(
                      key: _resumeSectionKey,
                      headingFontSize: 42,
                      sectionSpace: 200,
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                    ),
                    DesktopContactSection(
                      key: _contactSectionKey,
                      sectionSpace: 250,
                      headingFontSize: 42,
                      subHeadingFontSize: 38,
                    ),
                    DesktopFooterSection(
                      key: _footerSectionKey,
                    ),
                  ],
                ),
                sdLayout: ListView(
                  cacheExtent: double.infinity,
                  controller: _sController,
                  children: [
                    DesktopHomeSection(
                      key: _homeSectionKey,
                      totalLeftSpacing: horizontalSpaceLarge,
                      profileWidth: 400,
                      profileHeight: 420,
                      profileTopPadding: 150,
                      subTextPadding: 50,
                      subTextFontSize: 26,
                    ),
                    DesktopTechStackSection(
                      key: _techStackSectionKey,
                      totalLeftSpacing: horizontalSpaceLarge,
                      sectionSpace: 90,
                    ),
                    DesktopAboutMeSection(
                      key: _aboutMeSectionKey,
                      totalLeftSpacing: horizontalSpaceLarge,
                      sectionSpace: 200,
                      imgHeight: 520,
                      imgWidth: 400,
                    ),
                    DesktopProjectSection(
                      key: _projectSectionKey,
                      sectionSpace: 200,
                      totalLeftSpacing: horizontalSpaceLarge,
                      textToProjectSpacing: verticalSpace(90),
                      imgWidth: 400,
                      imgHeight: 420,
                      projectHeadingFontSize: 30,
                      projectSubTextFontSize: 26,
                      projectSpacing: verticalSpaceMassive,
                    ),
                    DesktopResume(
                      key: _resumeSectionKey,
                      sectionSpace: 200,
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                    ),
                    DesktopContactSection(
                      key: _contactSectionKey,
                      sectionSpace: 250,
                    ),
                    DesktopFooterSection(
                      key: _footerSectionKey,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 110,
              right: 40,
              child: Container(
                color: const Color(0XFFfafafa),
                padding: const EdgeInsets.fromLTRB(22, 22, 22, 22),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SelectableText(
                      'tratum.dev',
                      style: TextStyle(
                          fontFamily: 'Yatra',
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          color: Color(0XFF353839)),
                    ),
                    const Spacer(),
                    GestureDetector(
                      child: const ScaleOnHover(
                        scale: 12,
                        child: Text(
                          'Home',
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      onTap: () => _autoScroll(_homeSectionKey),
                    ),
                    horizontalSpaceMediumPlus,
                    GestureDetector(
                      child: const ScaleOnHover(
                        scale: 12,
                        child: Text(
                          'About',
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      onTap: () => _autoScroll(_aboutMeSectionKey),
                    ),
                    horizontalSpaceMediumPlus,
                    GestureDetector(
                      child: const ScaleOnHover(
                        scale: 12,
                        child: Text(
                          'Projects',
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      onTap: () => _autoScroll(_projectSectionKey),
                    ),
                    horizontalSpaceMediumPlus,
                    GestureDetector(
                      child: const ScaleOnHover(
                        scale: 12,
                        child: Text(
                          'Resume',
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      onTap: () => _autoScroll(_resumeSectionKey),
                    ),
                    horizontalSpaceMediumPlus,
                    GestureDetector(
                      child: const ScaleOnHover(
                        scale: 12,
                        child: Text(
                          'Contact',
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      onTap: () => _autoScroll(_contactSectionKey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: const Color(0XFF121212),
        onPressed: () {
          if (_isFooterVisible()) {
            _autoScroll(_homeSectionKey);
            setState(() {
              _scroller = false;
            });
          } else {
            _autoScroll(_footerSectionKey);
            setState(() {
              _scroller = true;
            });
          }
        },
        child: Center(
          child: ScaleOnHover(
            scale: 22,
            child: FaIcon(
              _scroller
                  ? FontAwesomeIcons.chevronDown
                  : FontAwesomeIcons.chevronUp,
              size: 18,
              color: const Color(0XFFfafafa),
            ),
          ),
        ),
      ),
    );
  }
}

class MobileHomeLayout extends StatefulWidget {
  const MobileHomeLayout({super.key});

  @override
  State<MobileHomeLayout> createState() => _MobileHomeLayoutState();
}

class _MobileHomeLayoutState extends State<MobileHomeLayout> {
  final ScrollController _sController = ScrollController();
  final GlobalKey _homeSectionKey = GlobalKey();
  final GlobalKey _techStackSectionKey = GlobalKey();
  final GlobalKey _aboutMeSectionKey = GlobalKey();
  final GlobalKey _projectSectionKey = GlobalKey();
  final GlobalKey _resumeSectionKey = GlobalKey();
  final GlobalKey _contactSectionKey = GlobalKey();
  final GlobalKey _footerSectionKey = GlobalKey();

  bool _scroller = true;

  bool _isFooterVisible() {
    final position = _sController.position.pixels;
    final maxScroll = _sController.position.maxScrollExtent;
    return position >= (maxScroll - 50);
  }

  void _autoScroll(GlobalKey key) {
    Future.delayed(Duration(milliseconds: 100), () {
      if (key.currentContext != null) {
        Scrollable.ensureVisible(
          key.currentContext!,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        log("The widget with the key $key is not available yet.");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFfafafa),
      appBar: AppBar(
        surfaceTintColor: const Color(0XFFFFFFFF),
        backgroundColor: const Color(0XFFFFFFFF),
        title: Row(
          children: [
            horizontalSpace(18),
            const SelectableText(
              'tratum.dev',
              style: TextStyle(
                fontFamily: 'Yatra',
                fontSize: 26,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                color: Color(0XFF353839),
              ),
            ),
          ],
        ),
        elevation: 20,
        // shadowColor: const Color(0XFFfafafa),
        iconTheme: const IconThemeData(
          color: Color(0XFF353839),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: const Color(0XFFFFFFFF),
        surfaceTintColor: const Color(0XFFFFFFFF),
        width: 180,
        child: Padding(
          padding: const EdgeInsets.only(left: 28, top: 28),
          child: ListView(
            children: [
              verticalSpaceLarge,
              ListTile(
                title: const ScaleOnHover(
                  scale: 12,
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                onTap: () => _autoScroll(_homeSectionKey),
              ),
              verticalSpaceMediumPlus,
              ListTile(
                title: const ScaleOnHover(
                  scale: 12,
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                onTap: () => _autoScroll(_aboutMeSectionKey),
              ),
              verticalSpaceMediumPlus,
              ListTile(
                title: const ScaleOnHover(
                  scale: 12,
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                onTap: () => _autoScroll(_projectSectionKey),
              ),
              verticalSpaceMediumPlus,
              ListTile(
                title: const ScaleOnHover(
                  scale: 12,
                  child: Text(
                    'Resume',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                onTap: () => _autoScroll(_resumeSectionKey),
              ),
              verticalSpaceMediumPlus,
              ListTile(
                title: const ScaleOnHover(
                  scale: 12,
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                onTap: () => _autoScroll(_contactSectionKey),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ResponsiveWebLayout.buildMobileLayout(
          context: context,
          largeMobileLayout: ListView(
            cacheExtent: double.infinity,
            controller: _sController,
            children: [
              MobileHomeSection(
                key: _homeSectionKey,
                imgWidth: 360,
                imgHeight: 380,
              ),
              verticalSpaceLargePlus,
              MobileTechStackSection(
                key: _techStackSectionKey,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileAboutMeSection(
                  key: _aboutMeSectionKey,
                ),
              ),
              verticalSpaceLargePlus,
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileProjectSection(
                  key: _projectSectionKey,
                ),
              ),
              verticalSpaceLargePlus,
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileResume(
                  key: _resumeSectionKey,
                  totalLeftSpacing: horizontalSpaceTiny,
                  pdfViewHeight: 580,
                  pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              verticalSpaceMassive,
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileContactSection(
                  key: _contactSectionKey,
                ),
              ),
              MobileFooterSection(
                key: _footerSectionKey,
              ),
            ],
          ),
          mediumMobileLayout: ListView(
            cacheExtent: double.infinity,
            controller: _sController,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileHomeSection(
                  key: _homeSectionKey,
                  totalLeftPadding: horizontalSpaceSmall,
                  imgHeight: 230,
                  imgWidth: 220,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileTechStackSection(
                  key: _techStackSectionKey,
                  totalLeftSpacing: horizontalSpaceSmallPlus,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileAboutMeSection(
                  key: _aboutMeSectionKey,
                ),
              ),
              verticalSpaceLarge,
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileProjectSection(
                  key: _projectSectionKey,
                ),
              ),
              verticalSpaceLarge,
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileResume(
                  key: _resumeSectionKey,
                  totalLeftSpacing: horizontalSpaceTiny,
                  pdfViewHeight: 580,
                  pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              verticalSpaceMassive,
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileContactSection(
                  key: _contactSectionKey,
                ),
              ),
              MobileFooterSection(
                key: _footerSectionKey,
              ),
            ],
          ),
          smallMobileLayout: ListView(
            cacheExtent: double.infinity,
            controller: _sController,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileHomeSection(
                  key: _homeSectionKey,
                  totalLeftPadding: horizontalSpaceTiny,
                  imgHeight: 190,
                  imgWidth: 180,
                  headerFontSize: 38,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 13, 16),
                child: MobileTechStackSection(
                  key: _techStackSectionKey,
                  totalLeftSpacing: horizontalSpaceTiny,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileAboutMeSection(
                  key: _aboutMeSectionKey,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileProjectSection(
                  key: _projectSectionKey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileResume(
                  key: _resumeSectionKey,
                  totalLeftSpacing: horizontalSpaceTiny,
                  pdfViewHeight: 580,
                  pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              verticalSpaceMassive,
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileContactSection(
                  key: _contactSectionKey,
                ),
              ),
              MobileFooterSection(
                key: _footerSectionKey,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: const Color(0XFF121212),
        onPressed: () {
          if (_isFooterVisible()) {
            _autoScroll(_homeSectionKey);
            setState(() {
              _scroller = false;
            });
          } else {
            _autoScroll(_footerSectionKey);
            setState(() {
              _scroller = true;
            });
          }
        },
        child: Center(
          child: ScaleOnHover(
            scale: 22,
            child: FaIcon(
              _scroller
                  ? FontAwesomeIcons.chevronUp
                  : FontAwesomeIcons.chevronDown,
              size: 18,
              color: const Color(0XFFfafafa),
            ),
          ),
        ),
      ),
    );
  }
}

class TabletHomeLayout extends StatefulWidget {
  const TabletHomeLayout({super.key});

  @override
  State<TabletHomeLayout> createState() => _TabletHomeLayoutState();
}

class _TabletHomeLayoutState extends State<TabletHomeLayout> {
  final ScrollController _sController = ScrollController();
  bool _scroller = false;

  void _sListener() {
    final maxScroll = _sController.position.maxScrollExtent;
    final currentScroll = _sController.offset;

    setState(() {
      _scroller = currentScroll >= maxScroll;
    });
  }

  @override
  void initState() {
    super.initState();
    _sController.addListener(_sListener);
  }

  @override
  void dispose() {
    _sController.removeListener(_sListener);
    _sController.dispose();
    super.dispose();
  }

  void _autoScroll() {
    if (_scroller) {
      _sController.animateTo(
        _sController.position.minScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    } else {
      _sController.animateTo(
        _sController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFfafafa),
      appBar: AppBar(
        surfaceTintColor: const Color(0XFFFFFFFF),
        backgroundColor: const Color(0XFFFFFFFF),
        title: Row(
          children: [
            horizontalSpace(70),
            const SelectableText(
              'tratum.dev',
              style: TextStyle(
                fontFamily: 'Yatra',
                fontSize: 38,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                color: Color(0XFF353839),
              ),
            ),
          ],
        ),
        // shadowColor: const Color(0XFFfafafa),
        iconTheme: const IconThemeData(
          color: Color(0XFF353839),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: const Color(0XFFFFFFFF),
        surfaceTintColor: const Color(0XFFFFFFFF),
        width: 240,
        child: Padding(
          padding: const EdgeInsets.only(left: 28, top: 28),
          child: ListView(
            children: [
              verticalSpaceLarge,
              ListTile(
                title: const ScaleOnHover(
                  scale: 12,
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                onTap: () {
                  ContentScrolling.autoScroll(
                      scrollPosition: 0, conn: _sController);
                },
              ),
              verticalSpaceMediumPlus,
              ListTile(
                title: const ScaleOnHover(
                  scale: 12,
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                onTap: () {
                  ContentScrolling.autoScroll(
                      scrollPosition: 1050, conn: _sController);
                },
              ),
              verticalSpaceMediumPlus,
              ListTile(
                title: const ScaleOnHover(
                  scale: 12,
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                onTap: () {
                  ContentScrolling.autoScroll(
                      scrollPosition: 1780, conn: _sController);
                },
              ),
              verticalSpaceMediumPlus,
              ListTile(
                title: const ScaleOnHover(
                  scale: 12,
                  child: Text(
                    'Resume',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                onTap: () {
                  ContentScrolling.autoScroll(
                    scrollPosition: 4750,
                    conn: _sController,
                  );
                },
              ),
              verticalSpaceMediumPlus,
              ListTile(
                title: const ScaleOnHover(
                  scale: 12,
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                onTap: () {
                  ContentScrolling.autoScroll(
                    scrollPosition: _sController.position.maxScrollExtent,
                    conn: _sController,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ResponsiveWebLayout.buildTabletLayout(
          context: context,
          highResTabletLayout: ListView(
            controller: _sController,
            children: [],
          ),
          standardTabletLayout: ListView(
            controller: _sController,
            children: [
              TabletHomeSection(
                totalLeftSpacing: horizontalSpaceLarge,
                headerFontSize: 42,
                subTextFontSize: 24,
                profileHeight: 320,
                profileWidth: 285,
                totalRightSpacing: horizontalSpaceLarge,
              ),
              verticalSpaceLarge,
              TabletTechStackSection(
                headingFontSize: 34,
                totalLeftSpacing: horizontalSpaceLarge,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: const Color(0XFF121212),
        onPressed: _autoScroll,
        child: Center(
          child: ScaleOnHover(
            scale: 22,
            child: FaIcon(
              _scroller
                  ? FontAwesomeIcons.chevronUp
                  : FontAwesomeIcons.chevronDown,
              size: 18,
              color: const Color(0XFFfafafa),
            ),
          ),
        ),
      ),
    );
  }
}
