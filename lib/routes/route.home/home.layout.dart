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
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
              child: ResponsiveWebLayout.buildDesktopLayout(
                context: context,
                quadHDLayout: ListView(
                  controller: _sController,
                  children: [
                    DesktopHomeSection(
                      headerFontSize: 86,
                      subTextFontSize: 48,
                      iconSize: 56,
                      profileWidth: 800,
                      profileHeight: 840,
                    ),
                    DesktopTechStackSection(
                      sectionSpace: 90,
                    ),
                    DesktopAboutMeSection(
                      sectionSpace: 200,
                    ),
                    DesktopProjectSection(
                      sectionSpace: 200,
                      textToProjectSpacing: verticalSpace(90),
                    ),
                    DesktopContactSection(
                      sectionSpace: 200,
                    ),
                    DesktopFooterSection(),
                  ],
                ),
                fullHDLayout: ListView(
                  controller: _sController,
                  children: [
                    DesktopHomeSection(
                      subTextFontSize: 42,
                      profileWidth: 680,
                      profileHeight: 700,
                    ),
                    DesktopTechStackSection(
                      sectionSpace: 90,
                      headingFontSize: 42,
                    ),
                    DesktopAboutMeSection(
                      sectionSpace: 200,
                      headingFontSize: 42,
                      subTextFontSize: 36,
                    ),
                    DesktopProjectSection(
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
                      sectionSpace: 320,
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                      headingFontSize: 42,
                    ),
                    DesktopContactSection(
                      sectionSpace: 250,
                      headingFontSize: 42,
                      imgHeight: 42,
                      imgWidth: 42,
                    ),
                    const DesktopFooterSection(),
                  ],
                ),
                hdLayout: ListView(
                  controller: _sController,
                  children: [
                    DesktopHomeSection(
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      iconSize: 46,
                      subTextFontSize: 38,
                      profileWidth: 680,
                      profileHeight: 730,
                    ),
                    DesktopTechStackSection(
                      sectionSpace: 40,
                      headingFontSize: 42,
                    ),
                    DesktopAboutMeSection(
                      sectionSpace: 200,
                      headingFontSize: 42,
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      imgWidth: 650,
                      imgHeight: 600,
                      subTextFontSize: 28,
                    ),
                    DesktopProjectSection(
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
                      headingFontSize: 42,
                      sectionSpace: 200,
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                    ),
                    DesktopContactSection(
                      sectionSpace: 250,
                      headingFontSize: 42,
                      subHeadingFontSize: 38,
                    ),
                    const DesktopFooterSection(),
                  ],
                ),
                sdLayout: ListView(
                  controller: _sController,
                  children: [
                    DesktopHomeSection(
                      totalLeftSpacing: horizontalSpaceLarge,
                      profileWidth: 400,
                      profileHeight: 420,
                      profileTopPadding: 150,
                      subTextPadding: 50,
                      subTextFontSize: 26,
                    ),
                    DesktopTechStackSection(
                      totalLeftSpacing: horizontalSpaceLarge,
                      sectionSpace: 90,
                    ),
                    DesktopAboutMeSection(
                      totalLeftSpacing: horizontalSpaceLarge,
                      sectionSpace: 200,
                      imgHeight: 520,
                      imgWidth: 400,
                    ),
                    DesktopProjectSection(
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
                      sectionSpace: 200,
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                    ),
                    DesktopContactSection(
                      sectionSpace: 250,
                    ),
                    const DesktopFooterSection(),
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
                      onTap: () {
                        ContentScrolling.autoScroll(
                            scrollPosition: 0, conn: _sController);
                      },
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
                      onTap: () {
                        ContentScrolling.autoScroll(
                            scrollPosition: 710, conn: _sController);
                      },
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
                      onTap: () {
                        ContentScrolling.autoScroll(
                            scrollPosition: 1500, conn: _sController);
                      },
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
                      onTap: () {
                        ContentScrolling.autoScroll(
                          scrollPosition: 5000,
                          conn: _sController,
                        );
                      },
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
          ],
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

class MobileHomeLayout extends StatefulWidget {
  const MobileHomeLayout({super.key});

  @override
  State<MobileHomeLayout> createState() => _MobileHomeLayoutState();
}

class _MobileHomeLayoutState extends State<MobileHomeLayout> {
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
                      fontSize: 22,
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
                      fontSize: 22,
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
                      fontSize: 22,
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
                      fontSize: 22,
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
        child: ResponsiveWebLayout.buildMobileLayout(
          context: context,
          largeMobileLayout: ListView(
            controller: _sController,
            children: [
              MobileHomeSection(
                imgWidth: 360,
                imgHeight: 380,
              ),
              MobileTechStackSection(),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileAboutMeSection(),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileProjectSection(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileResume(
                  totalLeftSpacing: horizontalSpaceTiny,
                  pdfViewHeight: 580,
                  pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              verticalSpaceMassive,
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileContactSection(),
              ),
              const MobileFooterSection(),
            ],
          ),
          mediumMobileLayout: ListView(
            controller: _sController,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileHomeSection(
                  totalLeftPadding: horizontalSpaceSmall,
                  iconLeftPadding: horizontalSpaceSmall,
                  imgHeight: 230,
                  imgWidth: 220,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileTechStackSection(
                  totalLeftSpacing: horizontalSpaceSmallPlus,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileAboutMeSection(),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileProjectSection(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileResume(
                  totalLeftSpacing: horizontalSpaceTiny,
                  pdfViewHeight: 580,
                  pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              verticalSpaceMassive,
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileContactSection(),
              ),
              const MobileFooterSection(),
            ],
          ),
          smallMobileLayout: ListView(
            controller: _sController,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileHomeSection(
                  totalLeftPadding: horizontalSpaceTiny,
                  iconLeftPadding: horizontalSpaceTiny,
                  imgHeight: 190,
                  imgWidth: 180,
                  headerFontSize: 38,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 13, 16),
                child: MobileTechStackSection(
                  totalLeftSpacing: horizontalSpaceTiny,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileAboutMeSection(),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileProjectSection(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileResume(
                  totalLeftSpacing: horizontalSpaceTiny,
                  pdfViewHeight: 580,
                  pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              verticalSpaceMassive,
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: MobileContactSection(),
              ),
              const MobileFooterSection(),
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
