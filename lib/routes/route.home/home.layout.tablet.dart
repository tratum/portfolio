import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app/app.widgets.dart';
import '../../app/app.hover.extensions.dart';
import '../../app/app.constants.dart';
import '../../app/app.functions.dart';

class TabletHomeSection extends StatelessWidget {
  final Widget totalLeftSpacing;
  final Widget totalRightSpacing;
  final double headerFontSize;
  final double subTextPadding;
  final double subTextFontSize;
  final double iconSize;
  final double profileTopPadding;
  final double profileWidth;
  final double profileHeight;

  const TabletHomeSection(
      {super.key,
      this.totalLeftSpacing = horizontalSpaceMassive,
      this.totalRightSpacing = horizontalSpaceMassive,
      this.headerFontSize = 68,
      this.subTextPadding = 250,
      this.subTextFontSize = 32,
      this.iconSize = 36,
      this.profileWidth = 640,
      this.profileHeight = 700,
      this.profileTopPadding = 60});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceLarge,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  totalLeftSpacing,
                  SelectableText(
                    "F u l l - S t a c k",
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: headerFontSize,
                      fontWeight: FontWeight.w900,
                      color: const Color(0XFF353839),
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  totalLeftSpacing,
                  SelectableText(
                    "D e v",
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: headerFontSize,
                      fontWeight: FontWeight.w900,
                      color: const Color(0XFF353839),
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  SvgPicture.network(
                    'https://tratum.github.io/cloud-asset-storage/svg/waving-hand.svg',
                    semanticsLabel: "Hi From My Side",
                    fit: BoxFit.fill,
                    width: 48,
                    height: 48,
                  ),
                ],
              ),
              verticalSpaceLarge,
              Row(
                children: [
                  totalLeftSpacing,
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: Wrap(
                      runSpacing: 4.0, // Optional spacing between lines
                      children: [
                        totalLeftSpacing,
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'Afacad',
                              fontSize: subTextFontSize,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF6A8292),
                            ),
                            children: [
                              const TextSpan(
                                text:
                                "Hi, I'm Saksham Rawat. A passionate Full-Stack Developer based in Jaipur, India",
                              ),
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: GestureDetector(
                                    child: Image.network(
                                      "https://tratum.github.io/cloud-asset-storage/images/pin.webp",
                                      cacheWidth: 28,
                                      cacheHeight: 28,
                                      height: 24,
                                      width: 24,
                                    ),
                                    onTap: () async {
                                      return WebNavigator.openUrl(
                                        url:
                                        'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpaceMedium,
              Row(
                children: [
                  totalLeftSpacing,
                  GestureDetector(
                    child: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Color(0XFF000000),
                      size: iconSize,
                    ),
                    onTap: () async {
                      return WebNavigator.openUrl(
                        url: "https://www.linkedin.com/in/saksham-rawat-dev",
                      );
                    },
                  ),
                  horizontalSpaceMedium,
                  GestureDetector(
                    child: FaIcon(
                      FontAwesomeIcons.github,
                      color: Color(0XFF000000),
                      size: iconSize,
                    ),
                    onTap: () async {
                      return WebNavigator.openUrl(
                          url: "https://github.com/tratum");
                    },
                  )
                ],
              ),
              verticalSpaceLarge,
              Row(
                children: [
                  totalLeftSpacing,
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF000000))),
                    onPressed: () {
                      WebNavigator.launchEmail("tratum.connect@gmail.com");
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text(
                              "Let's Connect",
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: subTextFontSize + 2,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            horizontalSpaceSmallPlus,
                            const Icon(
                              Icons.send_sharp,
                              size: 28,
                              color: Color(0xFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).scaleOnHover(scale: 12),
                ],
              )
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(top: profileTopPadding),
          child: Image.network(
            "https://tratum.github.io/cloud-asset-storage/images/bitmoji-profile-sketch-animation.webp",
            width: profileWidth,
            height: profileHeight,
            fit: BoxFit.fill,
            repeat: ImageRepeat.repeat,
            gaplessPlayback: true,
          ),
        ),
      ],
    );
  }
}

class TabletTechStackSection extends StatelessWidget {
  final Widget totalLeftSpacing;
  final double headingFontSize;

  const TabletTechStackSection({
    super.key,
    this.totalLeftSpacing = horizontalSpaceMassive,
    this.headingFontSize = 34,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            totalLeftSpacing,
            SelectableText("Tech Stack",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: headingFontSize,
                  fontWeight: FontWeight.w700,
                  color: const Color(0XFF1B1B1B),
                )),
          ],
        ),
        verticalSpaceMediumPlus,
        Row(
          children: [
            totalLeftSpacing,
            Flexible(
              child: Wrap(
                spacing: 20,
                runSpacing: 18,
                alignment: WrapAlignment.start,
                children: devTechStack.map((item) => techStackBuilder(item)).toList(),
              ),
            ),
        ]
        ),
      ],
    );
  }
}