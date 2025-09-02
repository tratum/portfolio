import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/app.classes.dart';
import '../../app/app.constants.dart';
import '../../app/app.hover.extensions.dart';
import '../../app/app.widgets.dart';

class DesktopHomeSection extends StatelessWidget {
  final double iconSize;

  const DesktopHomeSection({super.key, this.iconSize = 36});

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
                ).scaleOnHover(scale: 1.2),
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
                ).scaleOnHover(scale: 1.2),
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
                          SvgPicture.asset('asset/icons/paperplane.svg', width: 38,height: 38,)
                        ],
                      ),
                    ),
                  ),
                ).scaleOnHover(scale: 1.2),
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
  const DesktopTechStackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotatingTechCircle(
        size: screenWidth(context) / 2,
        iconSize: 100,
        icons: skills.toImageList(width: 100, height: 100),
        secondsPerRevolution: 20,
        spinIcons: false,
        pauseOnHover: false,
        centerWidget: Text("Tech Stack", style: sectionHeading(context)),
        onTap: (index) async =>
            await WebNavigator.openUrl(url: skills.values[index].url),
      ),
    );
  }
}

class DesktopAboutMeSection extends StatelessWidget {
  const DesktopAboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          hMedium(context),
          Container(
            width: screenWidth(context) / 2.5,
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
          hXtraMedium(context),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText("About Me", style: sectionHeading(context)),
                vMedium(context),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: sFont(context),
                      fontWeight: FontWeight.w700,
                      color: const Color(0XFF3C4A53),
                    ),
                    children: const [
                      TextSpan(text: "Namaste ( "),
                      TextSpan(
                        text: "NAH-Muh-Stay",
                        style: TextStyle(
                          fontFamily: 'Afacad',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF000000),
                        ),
                      ),
                      TextSpan(text: " ) As a Full Stack Developer"),
                    ],
                  ),
                ),
                vTiny(context),
                SelectableText(
                  "I possess an immense Zeal for crafting seamless digital experiences through writing a clean and optimized code. With a strong belief in the power of teamwork, I value open communication and diverse perspectives. Eager to contribute my skills and enthusiasm to innovative projects, I look forward to fostering a collaborative spirit while delivering a coding excellence.",
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: sFont(context),
                    fontWeight: FontWeight.w700,
                    color: const Color(0XFF3C4A53),
                    overflow: TextOverflow.visible,
                  ),
                  textAlign: TextAlign.justify,
                ),
                vMedium(context),
                SelectableText(
                  "Let's Build Something Extraordinary Together !!",
                  style: TextStyle(
                    fontFamily: 'RussoOne',
                    fontSize: sFont(context) + 4,
                    fontWeight: FontWeight.w600,
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
  const DesktopProjectSection({super.key});

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
                  SelectableText("Portfolio", style: sectionHeading(context)),
                ],
              ),
              vXtraSmall(context),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  autoHSpace(context, whitespace.s.size),
                  SelectableText(
                    "Every Project Represents an Original Work Of Development.",
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: mFont(context),
                      fontWeight: FontWeight.w700,
                      color: const Color(0XFF3C4A53),
                    ),
                  ),
                  hTiny(context),
                  Center(
                    child: Image.network(
                      "https://tratum.github.io/cloud-asset-storage/images/glowingStar.webp",
                      cacheWidth: 50,
                      cacheHeight: 50,
                      height: 60,
                      width: 60,
                    ),
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
  final double pdfViewHeight;
  final double pdfViewWidth;

  const DesktopResume({
    super.key,
    this.pdfViewHeight = 800,
    this.pdfViewWidth = 800,
  });

  @override
  Widget build(BuildContext context) {
    final pdfView = HtmlElementView(
      key: UniqueKey(),
      viewType: 'pdf-iframe-view',
    );
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hMedium(context),
            SelectableText("Resume", style: sectionHeading(context)),
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
  final double imgHeight;
  final double imgWidth;

  const DesktopContactSection({
    super.key,
    this.imgHeight = 30,
    this.imgWidth = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: whitespace.responsiveSpace(context, whitespace.m),
        right: whitespace.responsiveSpace(context, whitespace.m),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text("Get in touch", style: sectionHeading(context))),
          vMedium(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Let's build", style: sectionSubHeadings(context)),
                    vSmall(context),
                    Text(
                      "I'm currently available to take on new projects, so feel free to send me a message about anything that you want me to work on. You can contact anytime.",
                      style: smallTextStyle(context),
                    ),
                    vSmall(context),
                    Container(
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.envelopeOpen,
                            size: 24,
                            color: Color(0XFF000000),
                          ),
                          hTiny(context),
                          Text("tratum.connect@gmail.com", style: TextStyle(fontFamily: 'Afacad', fontWeight: FontWeight.w600, fontSize: sFont(context), color: Color(0XFF3C4A53)),)
                        ],
                      ),
                    ),
                    vSmall(context),
                    Container(
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.locationDot,
                            size: 24,
                            color: Color(0XFF000000),
                          ),
                          hTiny(context),
                          Text("Jaipur, India", style: TextStyle(fontFamily: 'Afacad', fontWeight: FontWeight.w600, fontSize: sFont(context), color: Color(0XFF3C4A53)),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              hLarge(context),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: screenHeight(context) * 0.5,
                      child: Placeholder(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    //   Row(
    //   children: [
    //     hMedium(context),
    //     Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         SelectableText(
    //           "Let's build together",
    //           style: sectionHeading(context),
    //         ),
    //         vXtraSmall(context),
    //         Row(
    //           children: [
    //             SelectableText(
    //               "I'm always open to new projects and opportunities.",
    //               style: TextStyle(
    //                 fontFamily: 'Afacad',
    //                 fontSize: sFont(context),
    //                 fontWeight: FontWeight.w900,
    //                 color: const Color(0XFF121212),
    //               ),
    //             ),
    //             hTiny(context),
    //             SelectableText(
    //               "Drop a Hello,",
    //               style: TextStyle(
    //                 fontFamily: 'Afacad',
    //                 fontSize: sFont(context),
    //                 fontWeight: FontWeight.w900,
    //                 color: const Color(0XFF121212),
    //               ),
    //             ),
    //           ],
    //         ),
    //         vXtraSmall(context),
    //         Row(
    //           children: [
    //             SelectableText(
    //               "Let's Collaborate and Grow!",
    //               style: TextStyle(
    //                 fontFamily: 'Afacad',
    //                 fontSize: sFont(context),
    //                 fontWeight: FontWeight.w900,
    //                 color: const Color(0XFF121212),
    //               ),
    //             ),
    //             hTiny(context),
    //             Image.network(
    //               "https://tratum.github.io/cloud-asset-storage/images/pointingDown.webp",
    //               cacheWidth: 28,
    //               cacheHeight: 28,
    //               height: imgHeight,
    //               width: imgWidth,
    //             ),
    //           ],
    //         ),
    //         vLarge(context),
    //         Row(
    //           children: [
    //             ElevatedButton(
    //               style: ButtonStyle(
    //                 backgroundColor: WidgetStateProperty.all(
    //                   const Color(0XFF000000),
    //                 ),
    //               ),
    //               onPressed: () {
    //                 WebNavigator.launchEmail("tratum.connect@gmail.com");
    //               },
    //               child: Padding(
    //                 padding: EdgeInsets.all(12),
    //                 child: Center(
    //                   child: Row(
    //                     children: [
    //                       FaIcon(
    //                         FontAwesomeIcons.envelopeOpen,
    //                         size: 24,
    //                         color: Color(0xFFFFFFFF),
    //                       ),
    //                       hSmall(context),
    //                       Text(
    //                         "tratum.connect@gmail.com",
    //                         style: TextStyle(
    //                           fontFamily: 'Afacad',
    //                           fontSize: 24,
    //                           fontWeight: FontWeight.w700,
    //                           color: Color(0xFFDE3163),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ).scaleOnHover(scale: 1.2),
    //             // GestureDetector(
    //             //   onTap: () {
    //             //     WebNavigator.launchEmail("tratum.connect@gmail.com");
    //             //   },
    //             //   child: const ScaleOnHover(
    //             //     scale: 12,
    //             //     child: Row(
    //             //       children: [
    //             //         Icon(
    //             //           Icons.mail_outline_rounded,
    //             //           size: 42,
    //             //           color: Color(0XFF3498db),
    //             //         ),
    //             //         horizontalSpaceTiny,
    //             //         Text(
    //             //           "tratum.connect@gmail.com",
    //             //           style: TextStyle(
    //             //             fontFamily: 'Afacad',
    //             //             fontSize: 24,
    //             //             fontWeight: FontWeight.w700,
    //             //             color: Color(0XFF121212),
    //             //           ),
    //             //         )
    //             //       ],
    //             //     ),
    //             //   ),
    //             // ),
    //             hLarge(context),
    //             ElevatedButton(
    //               style: ButtonStyle(
    //                 backgroundColor: WidgetStateProperty.all(
    //                   const Color(0XFF000000),
    //                 ),
    //               ),
    //               onPressed: () async {
    //                 return WebNavigator.openUrl(
    //                   url: 'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
    //                 );
    //               },
    //               child: Padding(
    //                 padding: EdgeInsets.all(12),
    //                 child: Center(
    //                   child: Row(
    //                     children: [
    //                       Icon(
    //                         Icons.map_outlined,
    //                         size: 26,
    //                         color: Color(0xFFFFFFFF),
    //                       ),
    //                       hSmall(context),
    //                       Text(
    //                         "Jaipur, Rajasthan, India",
    //                         style: TextStyle(
    //                           fontFamily: 'Afacad',
    //                           fontSize: 24,
    //                           fontWeight: FontWeight.w700,
    //                           color: Color(0xFFD0F0C0),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ).scaleOnHover(scale: 1.2),
    //             // GestureDetector(
    //             //   onTap: () async {
    //             //     return WebNavigator.openUrl(
    //             //       url: 'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
    //             //     );
    //             //   },
    //             //   child: const ScaleOnHover(
    //             //     scale: 12,
    //             //     child: Row(children: [
    //             //       Icon(
    //             //         Icons.map_outlined,
    //             //         size: 42,
    //             //         color: Color(0XFF00A86B),
    //             //       ),
    //             //       horizontalSpaceTiny,
    //             //       SelectableText(
    //             //         "Jaipur, Rajasthan, India",
    //             //         style: TextStyle(
    //             //           fontFamily: 'Afacad',
    //             //           fontSize: 24,
    //             //           fontWeight: FontWeight.w700,
    //             //           color: Color(0XFF121212),
    //             //         ),
    //             //       ),
    //             //     ]),
    //             //   ),
    //             // ),
    //           ],
    //         ),
    //         vXtraLarge(context),
    //       ],
    //     ),
    //     hMedium(context),
    //   ],
    // );
  }
}

class DesktopFooterSection extends StatelessWidget {
  const DesktopFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF000000),
      child: Padding(
        padding: EdgeInsets.only(
          left: whitespace.l.size,
          right: whitespace.l.size,
        ),
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
                    return WebNavigator.openUrl(
                      url: 'https://github.com/tratum',
                    );
                  },
                  child: const ScaleOnHover(
                    scale: 1.2,
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
                    scale: 1.2,
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
