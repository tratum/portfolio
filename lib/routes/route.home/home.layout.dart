import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app/app.widgets.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';

import '../../app/app.classes.dart';
import '../../app/app.constants.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFfafafa),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              cacheExtent: double.infinity,
              scrollDirection: Axis.vertical,
              controller: _sController,
              children: [
                vSmall(context),
                DesktopHomeSection(key: _homeSectionKey),
                vXtraLarge(context),
                DesktopTechStackSection(key: _techStackSectionKey),
                vXXLarge(context),
                DesktopAboutMeSection(key: _aboutMeSectionKey),
                vXtraLarge(context),
                DesktopProjectSection(key: _projectSectionKey),
                // DesktopResume(
                //   key: _resumeSectionKey,
                //   sectionSpace: 320,
                //   pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                //   headingFontSize: 42,
                // ),
                vMassive(context),
                DesktopContactSection(key: _contactSectionKey),
                vXtraLarge(context),
                DesktopFooterSection(key: _footerSectionKey),
              ],
            ),
            Positioned(
              top: 24,
              left: 0,
              right: 0,
              child: Container(
                color: const Color(0XFFfafafa),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    hXtraMedium(context),
                    SelectableText(
                      'tratum.dev',
                      style: TextStyle(
                        fontFamily: 'Yatra',
                        fontSize: mFont(context),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: Color(0XFF353839),
                      ),
                    ),
                    const Spacer(),
                    navbar(context, "Home", _homeSectionKey),
                    hSmall(context),
                    navbar(context, "Skills", _techStackSectionKey),
                    hSmall(context),
                    navbar(context, "About", _aboutMeSectionKey),
                    hSmall(context),
                    navbar(context, "Projects", _projectSectionKey),
                    // hSmall(context),
                    // navbar(context, "Resume", _resumeSectionKey),
                    hSmall(context),
                    navbar(context, "Contact", _contactSectionKey),
                    hSmall(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ScaleOnHover(
        scale: 1.2,
        child: FloatingActionButton(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          backgroundColor: const Color(0XFF121212),
          onPressed: () {
            if (ContentScrolling.isFooterVisible(_sController)) {
              ContentScrolling.autoScroll(_homeSectionKey);
              setState(() {
                _scroller = false;
              });
            } else {
              ContentScrolling.autoScroll(_footerSectionKey);
              setState(() {
                _scroller = true;
              });
            }
          },
          child: Align(
            alignment: Alignment.center,
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
            hSmall(context),
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
        iconTheme: const IconThemeData(color: Color(0XFF353839)),
      ),
      endDrawer: Drawer(
        backgroundColor: const Color(0XFFFFFFFF),
        surfaceTintColor: const Color(0XFFFFFFFF),
        width: 180,
        child: Padding(
          padding: const EdgeInsets.only(left: 28, top: 28),
          child: ListView(
            children: [
              vLarge(context),
              ListTile(
                title: const ScaleOnHover(
                  scale: 1.2,
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
              vXtraMedium(context),
              ListTile(
                title: const ScaleOnHover(
                  scale: 1.2,
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
              vXtraMedium(context),
              ListTile(
                title: const ScaleOnHover(
                  scale: 1.2,
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
              // vXtraMedium(context),
              // ListTile(
              //   title: const ScaleOnHover(
              //     scale: 1.2,
              //     child: Text(
              //       'Resume',
              //       style: TextStyle(
              //         fontFamily: 'Afacad',
              //         fontSize: 22,
              //         fontWeight: FontWeight.w600,
              //         letterSpacing: 1.5,
              //       ),
              //     ),
              //   ),
              //   onTap: () => _autoScroll(_resumeSectionKey),
              // ),
              vXtraMedium(context),
              ListTile(
                title: const ScaleOnHover(
                  scale: 1.2,
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
              vXtraLarge(context),
              MobileTechStackSection(key: _techStackSectionKey),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileAboutMeSection(key: _aboutMeSectionKey),
              ),
              vXtraLarge(context),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileProjectSection(key: _projectSectionKey),
              ),
              // vXtraLarge(context),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
              //   child: MobileResume(
              //     key: _resumeSectionKey,
              //     pdfViewHeight: 580,
              //     pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
              //   ),
              // ),
              vMassive(context),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileContactSection(key: _contactSectionKey),
              ),
              MobileFooterSection(key: _footerSectionKey),
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
                  imgHeight: 230,
                  imgWidth: 220,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileTechStackSection(key: _techStackSectionKey),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileAboutMeSection(key: _aboutMeSectionKey),
              ),
              vLarge(context),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileProjectSection(key: _projectSectionKey),
              ),
              // vLarge(context),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
              //   child: MobileResume(
              //     key: _resumeSectionKey,
              //     pdfViewHeight: 580,
              //     pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
              //   ),
              // ),
              vMassive(context),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileContactSection(key: _contactSectionKey),
              ),
              MobileFooterSection(key: _footerSectionKey),
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
                  imgHeight: 190,
                  imgWidth: 180,
                  headerFontSize: 38,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 13, 16),
                child: MobileTechStackSection(key: _techStackSectionKey),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileAboutMeSection(key: _aboutMeSectionKey),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileProjectSection(key: _projectSectionKey),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
              //   child: MobileResume(
              //     key: _resumeSectionKey,
              //     pdfViewHeight: 580,
              //     pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
              //   ),
              // ),
              vMassive(context),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileContactSection(key: _contactSectionKey),
              ),
              MobileFooterSection(key: _footerSectionKey),
            ],
          ),
        ),
      ),
      floatingActionButton: ScaleOnHover(
        scale: 1.2,
        child: FloatingActionButton(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFfafafa),
      appBar: AppBar(
        surfaceTintColor: const Color(0XFFFFFFFF),
        backgroundColor: const Color(0XFFFFFFFF),
        title: Row(
          children: [
            hXtralarge(context),
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
        iconTheme: const IconThemeData(color: Color(0XFF353839)),
      ),
      endDrawer: Drawer(
        backgroundColor: const Color(0XFFFFFFFF),
        surfaceTintColor: const Color(0XFFFFFFFF),
        width: 240,
        child: Padding(
          padding: const EdgeInsets.only(left: 28, top: 28),
          child: ListView(
            children: [
              vLarge(context),
              ListTile(
                title: const ScaleOnHover(
                  scale: 1.2,
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
                onTap: () => ContentScrolling.autoScroll(_homeSectionKey),
              ),
              vXtraMedium(context),
              ListTile(
                title: const ScaleOnHover(
                  scale: 1.2,
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
                onTap: () => ContentScrolling.autoScroll(_aboutMeSectionKey),
              ),
              vXtraMedium(context),
              ListTile(
                title: const ScaleOnHover(
                  scale: 1.2,
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
                onTap: () => ContentScrolling.autoScroll(_projectSectionKey),
              ),
              vXtraMedium(context),
              ListTile(
                title: const ScaleOnHover(
                  scale: 1.2,
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
                onTap: () => ContentScrolling.autoScroll(_resumeSectionKey),
              ),
              vXtraMedium(context),
              ListTile(
                title: const ScaleOnHover(
                  scale: 1.2,
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
                onTap: () => ContentScrolling.autoScroll(_contactSectionKey),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ResponsiveWebLayout.buildTabletLayout(
          context: context,
          highResTabletLayout: ListView(controller: _sController, children: []),
          standardTabletLayout: ListView(
            controller: _sController,
            children: [
              TabletHomeSection(
                key: _homeSectionKey,
                headerFontSize: 42,
                subTextFontSize: 24,
                profileHeight: 320,
                profileWidth: 285,
              ),
              vLarge(context),
              TabletTechStackSection(
                key: _techStackSectionKey,
                headingFontSize: 34,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ScaleOnHover(
        scale: 1.2,
        child: FloatingActionButton(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          backgroundColor: const Color(0XFF121212),
          onPressed: () {
            if (_isFooterVisible()) {
              ContentScrolling.autoScroll(_homeSectionKey);
              setState(() {
                _scroller = false;
              });
            } else {
              ContentScrolling.autoScroll(_footerSectionKey);
              setState(() {
                _scroller = true;
              });
            }
          },
          child: Align(
            alignment: Alignment.center,
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
