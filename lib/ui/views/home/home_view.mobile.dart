import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_functions.dart';
import '../../common/app_widgets.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/mouse_transforms/scale_on_hover.dart';
import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFfafafa),
        title: const SelectableText(
          'tratum.dev',
          style: TextStyle(
            fontFamily: 'Yatra',
            fontSize: 26,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
            color: Color(0XFF353839),
          ),
        ),
        elevation: 20,
        shadowColor: const Color(0XFFfafafa),
        iconTheme: const IconThemeData(
          color: Color(0XFF353839),
        ),
      ),
      endDrawer: Drawer(
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
                      scrollPosition: 0, conn: viewModel.scrollController);
                },
              ),
              verticalSpaceSemiMedium,
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
                      scrollPosition: 1050, conn: viewModel.scrollController);
                },
              ),
              verticalSpaceSemiMedium,
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
                      scrollPosition: 1780, conn: viewModel.scrollController);
                },
              ),
              verticalSpaceSemiMedium,
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
                    conn: viewModel.scrollController,
                  );
                },
              ),
              verticalSpaceSemiMedium,
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
                    scrollPosition:
                        viewModel.scrollController.position.maxScrollExtent,
                    conn: viewModel.scrollController,
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
            controller: viewModel.scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: HomeSectionMobile(
                    imgWidth: 220,
                    imgHeight: 230,
                    topStackImageValue: 42,
                    leftStackImageValue: 50,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: TechStackSectionMobile(),
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
                  child: ContactMobileSection(),
                ),
                const FooterSectionMobile(),
              ],
            ),
          ),
          mediumMobileLayout: SingleChildScrollView(
            controller: viewModel.scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: HomeSectionMobile(
                    headerLeftPadding: horizontalSpaceSmall,
                    iconLeftPadding: horizontalSpaceSmall,
                    leftStackImageValue: 54,
                    topStackImageValue: 45,
                    imgHeight: 230,
                    imgWidth: 220,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: TechStackSectionMobile(
                    totalLeftSpacing: horizontalSpaceSemiSmall,
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
                  child: ContactMobileSection(),
                ),
                const FooterSectionMobile(),
              ],
            ),
          ),
          smallMobileLayout: SingleChildScrollView(
            controller: viewModel.scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
                  child: HomeSectionMobile(
                    headerLeftPadding: horizontalSpaceTiny,
                    iconLeftPadding: horizontalSpaceTiny,
                    imgHeight: 190,
                    imgWidth: 180,
                    topStackImageValue: 62,
                    leftStackImageValue: 46,
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
                  child: ContactMobileSection(),
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
