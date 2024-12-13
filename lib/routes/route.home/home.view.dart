import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';

import '../../app/app.constants.dart';
import '../../app/app.functions.dart';
import '../../app/app.hover.extensions.dart';
import '../../app/app.widgets.dart';

class DesktopHomeView extends StatefulWidget {
  const DesktopHomeView({super.key});

  @override
  State<DesktopHomeView> createState() => _DesktopHomeViewState();
}

class _DesktopHomeViewState extends State<DesktopHomeView> {
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
                    HomeSection(
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
                      child: TechStackSection(),
                    ),
                    verticalSpaceSuperMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: AboutMeSection(),
                    ),
                    verticalSpaceSuperMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: ProjectSection(),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project1(),
                    ),
                    verticalSpaceMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project2(),
                    ),
                    verticalSpaceMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project3(),
                    ),
                    verticalSpaceMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project4(),
                    ),
                    verticalSpaceSuperMassive,
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: ContactSection(),
                    ),
                    FooterSection(),
                  ],
                ),
              ),
              fullHDLayout: SingleChildScrollView(
                controller: _sController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeSection(
                      subTextFontSize: 36,
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: TechStackSection(
                        headingFontSize: 42,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: AboutMeSection(
                        headingFontSize: 42,
                        subTextFontSize: 36,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: ProjectSection(
                        headingFontSize: 42,
                        subHeadingFontSize: 36,
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project1(
                        headingFontSize: 40,
                        subTextFontSize: 36,
                        imgWidth: 800,
                        imgHeight: 500,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project2(
                        headingFontSize: 40,
                        subTextFontSize: 36,
                        imgWidth: 800,
                        imgHeight: 500,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project3(
                        headingFontSize: 40,
                        subTextFontSize: 36,
                        imgWidth: 800,
                        imgHeight: 500,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project4(
                        headingFontSize: 40,
                        subTextFontSize: 36,
                        imgWidth: 800,
                        imgHeight: 500,
                      ),
                    ),
                    verticalSpaceUltraMega,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Resume(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                        headingFontSize: 42,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: ContactSection(
                        headingFontSize: 42,
                        imgHeight: 42,
                        imgWidth: 42,
                      ),
                    ),
                    const FooterSection(),
                  ],
                ),
              ),
              hdLayout: SingleChildScrollView(
                controller: _sController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeSection(
                      totalLeftSpacing: horizontalSpaceExtraLarge,
                      totalRightSpacing: SizedBox(
                        width: 50,
                      ),
                      subTextPadding: 100,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: TechStackSection(),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: AboutMeSection(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        imgWidth: 650,
                        imgHeight: 600,
                        subTextFontSize: 28,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: ProjectSection(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project1(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        headingFontSize: 32,
                        subTextFontSize: 28,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project2(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        headingFontSize: 32,
                        subTextFontSize: 28,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project3(
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
                      child: Project4(
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
                      child: Resume(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: ContactSection(),
                    ),
                    const FooterSection(),
                  ],
                ),
              ),
              sdLayout: SingleChildScrollView(
                controller: _sController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeSection(
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
                      child: TechStackSection(
                        totalLeftSpacing: horizontalSpaceLarge,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: AboutMeSection(
                        totalLeftSpacing: horizontalSpaceLarge,
                        imgHeight: 520,
                        imgWidth: 400,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: ProjectSection(
                        totalLeftSpacing: horizontalSpaceLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project1(
                        imgWidth: 400,
                        imgHeight: 420,
                        headingFontSize: 30,
                        subTextFontSize: 26,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project2(
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
                      child: Project3(
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
                      child: Project4(
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
                      child: Resume(
                        totalLeftSpacing: horizontalSpaceExtraLarge,
                        pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                      ),
                    ),
                    verticalSpaceMega,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: ContactSection(),
                    ),
                    const FooterSection(),
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

class MobileHomeView extends StatefulWidget {
  const MobileHomeView({super.key});

  @override
  State<MobileHomeView> createState() => _MobileHomeViewState();
}

class _MobileHomeViewState extends State<MobileHomeView> {
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
      backgroundColor: const Color(0XFFFFFFFF),
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
                HomeSectionMobile(
                  imgWidth: 360,
                  imgHeight: 380,
                ),
                TechStackSectionMobile(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: AboutMeSectionMobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: ProjectSectionMobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project1Mobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project2Mobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project3Mobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project4Mobile(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: ResumeMobile(
                    totalLeftSpacing: horizontalSpaceTiny,
                    pdfViewHeight: 580,
                    pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                  ),
                ),
                verticalSpaceMassive,
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: ContactSectionMobile(),
                ),
                const FooterSectionMobile(),
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
                  child: HomeSectionMobile(
                    totalLeftPadding: horizontalSpaceSmall,
                    iconLeftPadding: horizontalSpaceSmall,
                    imgHeight: 230,
                    imgWidth: 220,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: TechStackSectionMobile(
                    totalLeftSpacing: horizontalSpaceSmallPlus,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: AboutMeSectionMobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: ProjectSectionMobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project1Mobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project2Mobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project3Mobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project4Mobile(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: ResumeMobile(
                    totalLeftSpacing: horizontalSpaceTiny,
                    pdfViewHeight: 580,
                    pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                  ),
                ),
                verticalSpaceMassive,
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: ContactSectionMobile(),
                ),
                const FooterSectionMobile(),
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
                  child: HomeSectionMobile(
                    totalLeftPadding: horizontalSpaceTiny,
                    iconLeftPadding: horizontalSpaceTiny,
                    imgHeight: 190,
                    imgWidth: 180,
                    headerFontSize: 38,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 13, 16),
                  child: TechStackSectionMobile(
                    totalLeftSpacing: horizontalSpaceTiny,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: AboutMeSectionMobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: ProjectSectionMobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project1Mobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project2Mobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project3Mobile(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Project4Mobile(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: ResumeMobile(
                    totalLeftSpacing: horizontalSpaceTiny,
                    pdfViewHeight: 580,
                    pdfViewWidth: MediaQuery.of(context).size.width / 1.2,
                  ),
                ),
                verticalSpaceMassive,
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: ContactSectionMobile(),
                ),
                const FooterSectionMobile(),
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

class TabletHomeView extends StatefulWidget {
  const TabletHomeView({super.key});

  @override
  State<TabletHomeView> createState() => _TabletHomeViewState();
}

class _TabletHomeViewState extends State<TabletHomeView> {
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
      body: Placeholder(),
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
