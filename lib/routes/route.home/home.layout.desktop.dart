import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/app.constants.dart';
import '../../app/app.functions.dart';
import '../../app/app.hover.extensions.dart';
import '../../app/app.widgets.dart';

class DesktopHomeSection extends StatelessWidget {
  final double iconSize;

  const DesktopHomeSection({
    super.key,
    this.iconSize = 36,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        hMedium(context),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vSmall(context),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  "F u l l - S t a c k",
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: xlFont(context),
                    fontWeight: FontWeight.bold,
                    color: const Color(0XFF353839),
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  "D e v",
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: xlFont(context),
                    fontWeight: FontWeight.bold,
                    color: const Color(0XFF353839),
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(width: 25),
                SvgPicture.network(
                  'https://tratum.github.io/cloud-asset-storage/svg/waving-hand.svg',
                  semanticsLabel: "Hi From My Side",
                  fit: BoxFit.fill,
                  width: 85,
                  height: 85,
                ),
              ],
            ),
            vMedium(context),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Wrap(
                    runSpacing: 4.0, // Optional spacing between lines
                    children: [
                      autoHSpace(context, whitespace.s.size),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: sFont(context),
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF6A8292),
                          ),
                          children: [
                            const TextSpan(
                              text:
                                  "Hi, I'm Saksham Rawat. Open-Source Tinkerer & Full-Stack Dev who likes clean code and fast apps. Based in Jaipur, India.",
                            ),
                            WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: GestureDetector(
                                  child: Image.network(
                                    "https://tratum.github.io/cloud-asset-storage/images/pin.webp",
                                    height: iconSize,
                                    width: iconSize,
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
            vMedium(context),
            Row(
              children: [
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
                autoHSpace(context, whitespace.xs.size),
                GestureDetector(
                  child: FaIcon(
                    FontAwesomeIcons.github,
                    color: Color(0XFF000000),
                    size: iconSize,
                  ),
                  onTap: () async {
                    return WebNavigator.openUrl(
                      url: "https://github.com/tratum",
                    );
                  },
                ),
              ],
            ),
            vMedium(context),
            Row(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color(0XFF000000),
                    ),
                  ),
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
                              fontSize: sFont(context) - 4,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                          hSmall(context),
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
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(top: whitespace.m.size),
          child: Image.network(
            "https://tratum.github.io/cloud-asset-storage/images/bitmoji-profile-sketch-animation.webp",
            width: screenWidth(context) / 2.4,
            height: screenHeight(context) / 1.1,
            fit: BoxFit.fill,
            repeat: ImageRepeat.repeat,
            gaplessPlayback: true,
          ),
        ),
        hMedium(context),
      ],
    );
  }
}

class DesktopTechStackSection extends StatelessWidget {
  final double headingFontSize;
  final double iconSize;
  final double iconContainer;
  final double sectionSpace;
  final double dividerHeight;

  const DesktopTechStackSection({
    super.key,
    this.headingFontSize = 34,
    this.iconSize = 50,
    this.iconContainer = 74,
    this.dividerHeight = 60,

    required this.sectionSpace,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        hMedium(context),
        SelectableText(
          "Tech Stack",
          style: TextStyle(
            fontFamily: 'Afacad',
            fontSize: headingFontSize,
            fontWeight: FontWeight.w900,
            color: const Color(0XFF1B1B1B),
          ),
        ),
        autoHSpace(context, whitespace.xs.size),
        Divider(height: dividerHeight, thickness: 40, color: Color(0XFF1B1B1B)),
        autoHSpace(context, whitespace.xs.size),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: teckStackList
                  .map(
                    (item) => techStackBuilder(item, iconSize, iconContainer),
                  )
                  .toList(),
            ),
          ),
        ),
        hMedium(context),
      ],
    );
  }
}

class DesktopAboutMeSection extends StatelessWidget {
  final double imgHeight;
  final double imgWidth;
  final double headingFontSize;
  final double subTextFontSize;
  final double sectionSpace;

  const DesktopAboutMeSection({
    super.key,
    required this.sectionSpace,
    this.imgHeight = 550,
    this.imgWidth = 700,
    this.headingFontSize = 34,
    this.subTextFontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: sectionSpace),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          hMedium(context),
          Expanded(
            child: Container(
              height: imgHeight,
              width: imgWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://tratum.github.io/cloud-asset-storage/images/deskSetup.webp",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          hXtraMedium(context),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  "About Me :",
                  style: TextStyle(
                    fontFamily: 'RussoOne',
                    fontSize: headingFontSize,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.2,
                    color: const Color(0XFF000000),
                  ),
                ),
                vMedium(context),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: subTextFontSize,
                      fontWeight: FontWeight.w700,
                      color: const Color(0XFF3C4A53),
                    ),
                    children: const [
                      TextSpan(text: "Namaste ( "),
                      TextSpan(
                        text: "NAH-muh-stay",
                        style: TextStyle(
                          fontFamily: 'Afacad',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF000000),
                        ),
                      ),
                      TextSpan(text: " ) As a Junior Full Stack Developer"),
                    ],
                  ),
                ),
                vTiny(context),
                SelectableText(
                  "I possess an immense Zeal for crafting seamless digital experiences through writing a clean and optimized code. With a strong belief in the power of teamwork, I value open communication and diverse perspectives. Eager to contribute my skills and enthusiasm to innovative projects, I look forward to fostering a collaborative spirit while delivering a coding excellence.",
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: subTextFontSize,
                    fontWeight: FontWeight.w700,
                    color: const Color(0XFF3C4A53),
                    overflow: TextOverflow.visible,
                  ),
                  textAlign: TextAlign.justify,
                ),
                vTiny(context),
                SelectableText(
                  "Let's Build Something Extraordinary Together !!!!",
                  style: TextStyle(
                    fontFamily: 'RussoOne',
                    fontSize: subTextFontSize + 2,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    color: const Color(0XFFE53935),
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
          hMedium(context),
        ],
      ),
    );
  }
}

class DesktopProjectSection extends StatelessWidget {
  final double headingFontSize;
  final double projectHeadingFontSize;
  final double subHeadingFontSize;
  final double imgHeight;
  final double imgWidth;
  final double projectSubTextFontSize;

  const DesktopProjectSection({
    super.key,
    this.headingFontSize = 34,
    this.subHeadingFontSize = 28,
    this.imgHeight = 400,
    this.imgWidth = 600,
    this.projectHeadingFontSize = 26,
    this.projectSubTextFontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: ListView(
            shrinkWrap: true,
            children: [
              vMedium(context),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  autoHSpace(context, whitespace.s.size),
                  SelectableText(
                    "Portfolio: ",
                    style: TextStyle(
                      fontFamily: 'RussoOne',
                      fontSize: headingFontSize,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2,
                      color: const Color(0XFF000000),
                    ),
                  ),
                ],
              ),
              vXtraSmall(context),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  autoHSpace(context, whitespace.s.size),
                  SelectableText(
                    "Every project represents an original work of development.",
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: subHeadingFontSize,
                      fontWeight: FontWeight.w700,
                      color: const Color(0XFF3C4A53),
                    ),
                  ),
                  hSmall(context),
                  Image.network(
                    "https://tratum.github.io/cloud-asset-storage/images/glowingStar.webp",
                    cacheWidth: 28,
                    cacheHeight: 28,
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
              vLarge(context),
              repoLayoutLeft(
                context,
                repos.Notely.title,
                repos.Notely.description,
                repos.Notely.imgLink,
                true,
                repos.Notely.repoLink,
              ),
              vLarge(context),
              repoLayoutRight(
                context,
                repos.AppleVision.title,
                repos.AppleVision.description,
                repos.AppleVision.imgLink,
                false,
                repos.AppleVision.repoLink,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DesktopResume extends StatelessWidget {
  final double sectionSpace;
  final double pdfViewHeight;
  final double pdfViewWidth;
  final double headingFontSize;

  const DesktopResume({
    super.key,
    required this.sectionSpace,
    this.pdfViewHeight = 800,
    this.pdfViewWidth = 800,
    this.headingFontSize = 34,
  });

  @override
  Widget build(BuildContext context) {
    final pdfView = HtmlElementView(
      key: UniqueKey(),
      viewType: 'pdf-iframe-view',
    );
    return Column(
      children: [
        vSpace(sectionSpace),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hMedium(context),
            SelectableText(
              "Resume",
              style: TextStyle(
                fontFamily: 'RussoOne',
                fontSize: headingFontSize,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2,
                color: const Color(0XFF000000),
              ),
            ),
          ],
        ),
        vMedium(context),
        Row(
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: pdfViewWidth,
                height: pdfViewHeight,
                child: pdfView,
              ),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}

class DesktopContactSection extends StatelessWidget {
  final double headingFontSize;
  final double subHeadingFontSize;
  final double imgHeight;
  final double imgWidth;
  final double sectionSpace;

  const DesktopContactSection({
    super.key,
    required this.sectionSpace,
    this.headingFontSize = 34,
    this.subHeadingFontSize = 24,
    this.imgHeight = 30,
    this.imgWidth = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        hMedium(context),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vSpace(sectionSpace),
            SelectableText(
              "Let's build together",
              style: TextStyle(
                fontFamily: 'RussoOne',
                fontSize: headingFontSize,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2,
                color: const Color(0XFF000000),
              ),
            ),
            vXtraSmall(context),
            Row(
              children: [
                SelectableText(
                  "I'm always open to new projects and opportunities.",
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: subHeadingFontSize,
                    fontWeight: FontWeight.w900,
                    color: const Color(0XFF121212),
                  ),
                ),
                hTiny(context),
                SelectableText(
                  "Drop a Hello,",
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: subHeadingFontSize,
                    fontWeight: FontWeight.w900,
                    color: const Color(0XFF121212),
                  ),
                ),
              ],
            ),
            vXtraSmall(context),
            Row(
              children: [
                SelectableText(
                  "Let's Collaborate and Grow!",
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: subHeadingFontSize,
                    fontWeight: FontWeight.w900,
                    color: const Color(0XFF121212),
                  ),
                ),
                hTiny(context),
                Image.network(
                  "https://tratum.github.io/cloud-asset-storage/images/pointingDown.webp",
                  cacheWidth: 28,
                  cacheHeight: 28,
                  height: imgHeight,
                  width: imgWidth,
                ),
              ],
            ),
            vLarge(context),
            Row(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color(0XFF000000),
                    ),
                  ),
                  onPressed: () {
                    WebNavigator.launchEmail("tratum.connect@gmail.com");
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Center(
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.envelopeOpen,
                            size: 24,
                            color: Color(0xFFFFFFFF),
                          ),
                          hSmall(context),
                          Text(
                            "tratum.connect@gmail.com",
                            style: TextStyle(
                              fontFamily: 'Afacad',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFDE3163),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ).scaleOnHover(scale: 12),
                // GestureDetector(
                //   onTap: () {
                //     WebNavigator.launchEmail("tratum.connect@gmail.com");
                //   },
                //   child: const ScaleOnHover(
                //     scale: 12,
                //     child: Row(
                //       children: [
                //         Icon(
                //           Icons.mail_outline_rounded,
                //           size: 42,
                //           color: Color(0XFF3498db),
                //         ),
                //         horizontalSpaceTiny,
                //         Text(
                //           "tratum.connect@gmail.com",
                //           style: TextStyle(
                //             fontFamily: 'Afacad',
                //             fontSize: 24,
                //             fontWeight: FontWeight.w700,
                //             color: Color(0XFF121212),
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                hLarge(context),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color(0XFF000000),
                    ),
                  ),
                  onPressed: () async {
                    return WebNavigator.openUrl(
                      url: 'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Center(
                      child: Row(
                        children: [
                          Icon(
                            Icons.map_outlined,
                            size: 26,
                            color: Color(0xFFFFFFFF),
                          ),
                          hSmall(context),
                          Text(
                            "Jaipur, Rajasthan, India",
                            style: TextStyle(
                              fontFamily: 'Afacad',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFD0F0C0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ).scaleOnHover(scale: 12),
                // GestureDetector(
                //   onTap: () async {
                //     return WebNavigator.openUrl(
                //       url: 'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
                //     );
                //   },
                //   child: const ScaleOnHover(
                //     scale: 12,
                //     child: Row(children: [
                //       Icon(
                //         Icons.map_outlined,
                //         size: 42,
                //         color: Color(0XFF00A86B),
                //       ),
                //       horizontalSpaceTiny,
                //       SelectableText(
                //         "Jaipur, Rajasthan, India",
                //         style: TextStyle(
                //           fontFamily: 'Afacad',
                //           fontSize: 24,
                //           fontWeight: FontWeight.w700,
                //           color: Color(0XFF121212),
                //         ),
                //       ),
                //     ]),
                //   ),
                // ),
              ],
            ),
            vXtraLarge(context),
          ],
        ),
        hMedium(context),
      ],
    );
  }
}

class DesktopFooterSection extends StatelessWidget {
  const DesktopFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF000000),
      child: Padding(
        padding: EdgeInsets.only(left: whitespace.l.size, right: whitespace.l.size),
        child: Column(
          children: [
            vSmall(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SelectableText(
                  "© 2025 tratum.dev, Designed by Tratum",
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: 'Afacad',
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () async {
                    return WebNavigator.openUrl(url: 'https://github.com/tratum');
                  },
                  child: const ScaleOnHover(
                    scale: 12,
                    child: FaIcon(
                      FontAwesomeIcons.github,
                      color: Color(0XFFFFFFFF),
                      size: 36,
                    ),
                  ),
                ),
                hXtraSmall(context),
                GestureDetector(
                  onTap: () async {
                    return WebNavigator.openUrl(
                      url: 'https://www.linkedin.com/in/saksham-rawat-dev/',
                    );
                  },
                  child: const ScaleOnHover(
                    scale: 12,
                    child: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Color(0XFFFFFFFF),
                      size: 36,
                    ),
                  ),
                ),
              ],
            ),
            vSmall(context),
          ],
        ),
      ),
    );
  }
}
