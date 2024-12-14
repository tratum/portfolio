import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';
import '../../routes/route.home/home.layout.tablet.dart';
import '../../app/app.constants.dart';
import '../../app/app.functions.dart';
import '../../app/app.hover.extensions.dart';
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
            ResponsiveWebLayout.buildDesktopLayout(
              context: context,
              quadHDLayout: SingleChildScrollView(
                controller: _sController,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DesktopHomeSection(
                      headerFontSize: 86,
                      subTextFontSize: 48,
                      iconSize: 56,
                      profileWidth: 800,
                      profileHeight: 840,
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopTechStackSection(),
                    ),
                    verticalSpaceSuperMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopAboutMeSection(),
                    ),
                    verticalSpaceSuperMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProjectSection(),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject1(),
                    ),
                    verticalSpaceMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject2(),
                    ),
                    verticalSpaceMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject3(),
                    ),
                    verticalSpaceMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject4(),
                    ),
                    verticalSpaceSuperMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopContactSection(),
                    ),
                    DesktopFooterSection(),
                  ],
                ),
              ),
              fullHDLayout: SingleChildScrollView(
                controller: _sController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DesktopHomeSection(
                      subTextFontSize: 42,
                      profileWidth: 680,
                      profileHeight: 700,
                      totalRightSpacing: horizontalSpace(180),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopTechStackSection(
                        headingFontSize: 42,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopAboutMeSection(
                        headingFontSize: 42,
                        subTextFontSize: 36,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProjectSection(
                        headingFontSize: 42,
                        subHeadingFontSize: 36,
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject1(
                        headingFontSize: 40,
                        subTextFontSize: 36,
                        imgWidth: 800,
                        imgHeight: 500,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject2(
                        headingFontSize: 40,
                        subTextFontSize: 36,
                        imgWidth: 800,
                        imgHeight: 500,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject3(
                        headingFontSize: 40,
                        subTextFontSize: 36,
                        imgWidth: 800,
                        imgHeight: 500,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject4(
                        headingFontSize: 40,
                        subTextFontSize: 36,
                        imgWidth: 800,
                        imgHeight: 500,
                      ),
                    ),
                    verticalSpaceUltraMega,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopResume(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                        headingFontSize: 42,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopContactSection(
                        headingFontSize: 42,
                        imgHeight: 42,
                        imgWidth: 42,
                      ),
                    ),
                    const DesktopFooterSection(),
                  ],
                ),
              ),
              hdLayout: SingleChildScrollView(
                controller: _sController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DesktopHomeSection(
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      subTextFontSize: 42,
                      profileWidth: 680,
                      profileHeight: 730,
                      totalRightSpacing: horizontalSpaceExtraLarge,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopTechStackSection(),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopAboutMeSection(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        imgWidth: 650,
                        imgHeight: 600,
                        subTextFontSize: 28,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProjectSection(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject1(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        headingFontSize: 32,
                        subTextFontSize: 28,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject2(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        headingFontSize: 32,
                        subTextFontSize: 28,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject3(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        headerLeftSpacing: horizontalSpaceMassive,
                        headingFontSize: 32,
                        subTextFontSize: 28,
                        imgWidth: 650,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject4(
                        headerLeftSpacing: 120,
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        headingFontSize: 32,
                        subTextFontSize: 28,
                        imgWidth: 620,
                        subTextLeftSpacing: 40,
                        iconLeftSpacing: horizontalSpaceMassive,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopResume(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopContactSection(),
                    ),
                    const DesktopFooterSection(),
                  ],
                ),
              ),
              sdLayout: SingleChildScrollView(
                controller: _sController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DesktopHomeSection(
                      totalLeftSpacing: horizontalSpaceLarge,
                      totalRightSpacing: SizedBox(
                        width: 30,
                      ),
                      profileWidth: 400,
                      profileHeight: 420,
                      profileTopPadding: 150,
                      subTextPadding: 50,
                      subTextFontSize: 26,
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopTechStackSection(
                        totalLeftSpacing: horizontalSpaceLarge,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopAboutMeSection(
                        totalLeftSpacing: horizontalSpaceLarge,
                        imgHeight: 520,
                        imgWidth: 400,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProjectSection(
                        totalLeftSpacing: horizontalSpaceLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject1(
                        imgWidth: 400,
                        imgHeight: 420,
                        headingFontSize: 30,
                        subTextFontSize: 26,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject2(
                        imgHeight: 400,
                        imgWidth: 420,
                        totalLeftSpacing: horizontalSpaceLarge,
                        headingFontSize: 30,
                        subTextFontSize: 26,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject3(
                        imgHeight: 400,
                        imgWidth: 420,
                        totalLeftSpacing: horizontalSpaceLarge,
                        iconLeftSpacing: horizontalSpaceMassive,
                        headerLeftSpacing: horizontalSpaceMassive,
                        headingFontSize: 30,
                        subTextFontSize: 26,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopProject4(
                        imgHeight: 400,
                        imgWidth: 420,
                        totalLeftSpacing: horizontalSpaceLarge,
                        iconLeftSpacing: horizontalSpaceMassive,
                        headerLeftSpacing: 80,
                        headingFontSize: 30,
                        subTextFontSize: 26,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopResume(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: DesktopContactSection(),
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
          largeMobileLayout: SingleChildScrollView(
            controller: _sController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject1(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject2(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject3(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject4(),
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
          mediumMobileLayout: SingleChildScrollView(
            controller: _sController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject1(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject2(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject3(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject4(),
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
          smallMobileLayout: SingleChildScrollView(
            controller: _sController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject1(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject2(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject3(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: MobileProject4(),
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
          highResTabletLayout: SingleChildScrollView(
            controller: _sController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          ),
          standardTabletLayout: SingleChildScrollView(
            controller: _sController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
