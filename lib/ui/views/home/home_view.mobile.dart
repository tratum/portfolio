import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:tratum_portfolio/ui/common/app_colors.dart';
import 'package:tratum_portfolio/ui/common/ui_helpers.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';

import '../../common/app_functions.dart';
import '../../widgets/mouse_transforms/scale_on_hover.dart';
import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
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
