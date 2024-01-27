import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:tratum_portfolio/ui/animation/bouncy_image_animation.dart';
import 'package:tratum_portfolio/ui/animation/scale_animation_image.dart';
import 'package:tratum_portfolio/ui/animation/scale_animation_svg.dart';
import 'package:tratum_portfolio/ui/common/app_functions.dart';
import 'package:tratum_portfolio/ui/common/ui_helpers.dart';
import 'package:tratum_portfolio/ui/widgets/mouse_transforms/scale_on_hover.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';

import '../../common/app_widgets.dart';
import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  HomeViewDesktop({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ResponsiveWebLayout.buildDesktopLayout(
              context: context,
              quadHDLayout: SingleChildScrollView(
                controller: _scrollController,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      HomeSection(),
                      SizedBox(
                        height: 90,
                      ),
                      TechStackSection(),
                      verticalSpaceSuperMassive,
                      AboutMeSection(),
                      verticalSpaceSuperMassive,
                      ProjectSection(),
                      SizedBox(
                        height: 90,
                      ),
                      Project1(),
                      verticalSpaceMassive,
                      Project2(),
                      verticalSpaceSuperMassive,
                      ProjectSkeleton(),
                    ],
                  ),
                ),
              ),
              fullHDLayout: SingleChildScrollView(
                controller: _scrollController,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      HomeSection(),
                      SizedBox(
                        height: 90,
                      ),
                      TechStackSection(),
                      verticalSpaceSuperMassive,
                      AboutMeSection(),
                      verticalSpaceSuperMassive,
                      ProjectSection(),
                      SizedBox(
                        height: 90,
                      ),
                      Project1(),
                      verticalSpaceMassive,
                      Project2(),
                      verticalSpaceSuperMassive,
                      ProjectSkeleton(),
                    ],
                  ),
                ),
              ),
              hdLayout: SingleChildScrollView(
                controller: _scrollController,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      HomeSection(),
                      SizedBox(
                        height: 90,
                      ),
                      TechStackSection(),
                      verticalSpaceSuperMassive,
                      AboutMeSection(),
                      verticalSpaceSuperMassive,
                      ProjectSection(),
                      SizedBox(
                        height: 90,
                      ),
                      Project1(),
                      verticalSpaceMassive,
                      Project2(),
                      verticalSpaceSuperMassive,
                      ProjectSkeleton(),
                    ],
                  ),
                ),
              ),
              sdLayout: SingleChildScrollView(
                controller: _scrollController,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      HomeSection(),
                      SizedBox(
                        height: 90,
                      ),
                      TechStackSection(),
                      verticalSpaceSuperMassive,
                      AboutMeSection(),
                      verticalSpaceSuperMassive,
                      ProjectSection(),
                      SizedBox(
                        height: 90,
                      ),
                      Project1(),
                      verticalSpaceMassive,
                      Project2(),
                      verticalSpaceSuperMassive,
                      ProjectSkeleton(),
                    ],
                  ),
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
                    const Text(
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
                            scrollPosition: 0, conn: _scrollController);
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
                            scrollPosition: 710, conn: _scrollController);
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
                            scrollPosition: 1500, conn: _scrollController);
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
          ContentScrolling.autoScroll(
            scrollPosition: _scrollController.position.maxScrollExtent,
            conn: _scrollController,
          );
        },
        child: const FaIcon(
          FontAwesomeIcons.chevronDown,
          size: 24,
          color: Color(0XFFfafafa),
        ),
      ),
    );
  }
}
