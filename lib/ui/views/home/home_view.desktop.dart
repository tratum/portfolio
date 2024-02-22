import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_functions.dart';
import '../../common/app_widgets.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/mouse_transforms/scale_on_hover.dart';
import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ResponsiveWebLayout.buildDesktopLayout(
              context: context,
              quadHDLayout: SingleChildScrollView(
                controller: viewModel.scrollController,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: HomeSection(),
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
                controller: viewModel.scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: HomeSection(),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: TechStackSection(),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: AboutMeSection(),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: ProjectSection(),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project1(),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project2(),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project3(),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project4(),
                    ),
                    verticalSpaceMassive,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: PdfViewWidget(
                        totalLeftSpacing: horizontalSpaceSemiMassive,
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
              hdLayout: SingleChildScrollView(
                controller: viewModel.scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: HomeSection(
                        totalLeftSpacing: horizontalSpaceSemiMassive,
                        subTextPadding: 100,
                      ),
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
                        totalLeftSpacing: horizontalSpaceSemiMassive,
                        imgWidth: 650,
                        imgHeight: 600,
                        subTextFontSize: 28,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: ProjectSection(
                        totalLeftSpacing: horizontalSpaceSemiMassive,
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project1(
                        totalLeftSpacing: horizontalSpaceSemiMassive,
                        headingFontSize: 32,
                        subTextFontSize: 28,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project2(
                        totalLeftSpacing: horizontalSpaceSemiMassive,
                        headingLeftPadding: 120,
                        headingFontSize: 32,
                        subTextFontSize: 28,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project3(
                        totalLeftSpacing: horizontalSpaceSemiMassive,
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
                        totalLeftSpacing: horizontalSpaceSemiMassive,
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
                      child: PdfViewWidget(
                        totalLeftSpacing: horizontalSpaceSemiMassive,
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
                controller: viewModel.scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: HomeSection(
                        totalLeftSpacing: horizontalSpaceLarge,
                        circularFramePadding: horizontalSpaceLarge,
                        subTextPadding: 50,
                      ),
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
                        imgHeight: 440,
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
                        iconLeftSpacing: horizontalSpaceSemiLarge,
                        imgWidth: 400,
                        imgHeight: 380,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project2(
                        imgHeight: 400,
                        imgWidth: 380,
                        headingLeftPadding: 80,
                        totalLeftSpacing: horizontalSpaceLarge,
                        iconLeftPadding: horizontalSpaceSuperMassive,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project3(
                        imgHeight: 400,
                        imgWidth: 380,
                        totalLeftSpacing: horizontalSpaceLarge,
                        iconLeftSpacing: horizontalSpaceMassive,
                        headerLeftSpacing: horizontalSpaceMassive,
                      ),
                    ),
                    verticalSpaceMassive,
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: Project4(
                        imgHeight: 400,
                        imgWidth: 380,
                        totalLeftSpacing: horizontalSpaceLarge,
                        iconLeftSpacing: horizontalSpaceMassive,
                        headerLeftSpacing: 50,
                      ),
                    ),
                    verticalSpaceSuperMassive,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                      child: PdfViewWidget(
                        totalLeftSpacing: horizontalSpaceSemiMassive,
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
              left: 0,
              right: 0,
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
                          fontSize: 26,
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
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      onTap: () {
                        ContentScrolling.autoScroll(
                            scrollPosition: 0,
                            conn: viewModel.scrollController);
                      },
                    ),
                    horizontalSpaceSemiMedium,
                    GestureDetector(
                      child: const ScaleOnHover(
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
                            scrollPosition: 710,
                            conn: viewModel.scrollController);
                      },
                    ),
                    horizontalSpaceSemiMedium,
                    GestureDetector(
                      child: const ScaleOnHover(
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
                            scrollPosition: 1500,
                            conn: viewModel.scrollController);
                      },
                    ),
                    horizontalSpaceSemiMedium,
                    GestureDetector(
                      child: const ScaleOnHover(
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
                          scrollPosition: 5000,
                          conn: viewModel.scrollController,
                        );
                      },
                    ),
                    horizontalSpaceSemiMedium,
                    GestureDetector(
                      child: const ScaleOnHover(
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
                          scrollPosition: viewModel
                              .scrollController.position.maxScrollExtent,
                          conn: viewModel.scrollController,
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
        backgroundColor: const Color(0XFF121212),
        onPressed: () {
          if (viewModel.isAtBottom) {
            ContentScrolling.autoScroll(
              scrollPosition:
                  viewModel.scrollController.position.minScrollExtent,
              conn: viewModel.scrollController,
            );
          } else {
            ContentScrolling.autoScroll(
              scrollPosition:
                  viewModel.scrollController.position.maxScrollExtent,
              conn: viewModel.scrollController,
            );
          }
        },
        child: Center(
          child: ScaleOnHover(
            scale: 22,
            child: FaIcon(
              viewModel.isAtBottom
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
