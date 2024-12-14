import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/app.constants.dart';
import '../../app/app.functions.dart';
import '../../app/app.hover.extensions.dart';

class DesktopHomeSection extends StatelessWidget {
  final Widget totalLeftSpacing;
  final Widget totalRightSpacing;
  final double headerFontSize;
  final double subTextPadding;
  final double subTextFontSize;
  final double iconSize;
  final double profileTopPadding;
  final double profileWidth;
  final double profileHeight;

  const DesktopHomeSection(
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(24, 22, 24, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 150,
              ),
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
                    width: 85,
                    height: 85,
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
                                      height: 38,
                                      width: 38,
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
                                fontSize: subTextFontSize - 4,
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
        totalRightSpacing,
      ],
    );
  }
}

class DesktopTechStackSection extends StatelessWidget {
  final Widget totalLeftSpacing;
  final double headingFontSize;

  const DesktopTechStackSection({
    super.key,
    this.totalLeftSpacing = horizontalSpaceMassive,
    this.headingFontSize = 34,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        totalLeftSpacing,
        SelectableText("Tech Stack",
            style: TextStyle(
              fontFamily: 'Afacad',
              fontSize: headingFontSize,
              fontWeight: FontWeight.w700,
              color: const Color(0XFF1B1B1B),
            )),
        horizontalSpaceMedium,
        Container(
          height: 26,
          width: 3,
          color: const Color(0XFF1B1B1B),
        ),
        horizontalSpaceMedium,
        GestureDetector(
          child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: const Center(
              child: FaIcon(
                FontAwesomeIcons.html5,
                size: 34,
                color: Color(0XFFE34F26),
              ),
            ),
          ),
          onTap: () async {
            return WebNavigator.openUrl(
                url: "https://developer.mozilla.org/en-US/docs/Web/HTML");
          },
        ),
        horizontalSpaceMedium,
        GestureDetector(
          child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: const Center(
              child: FaIcon(
                FontAwesomeIcons.css3,
                size: 34,
                color: Color(0XFF1572B6),
              ),
            ),
          ),
          onTap: () async {
            return WebNavigator.openUrl(
                url: "https://developer.mozilla.org/en-US/docs/Web/CSS");
          },
        ),
        horizontalSpaceMedium,
        GestureDetector(
          child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Center(
              child: Image.network(
                "https://tratum.github.io/cloud-asset-storage/images/python.webp",
                cacheWidth: 34,
                cacheHeight: 34,
                height: 34,
                width: 34,
              ),
            ),
          ),
          onTap: () async {
            return WebNavigator.openUrl(url: "https://docs.python.org/3/");
          },
        ),
        horizontalSpaceMedium,
        GestureDetector(
          child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Image.network(
                  "https://tratum.github.io/cloud-asset-storage/images/flutter.webp",
                  cacheWidth: 28,
                  cacheHeight: 28,
                  height: 28,
                  width: 28,
                ),
              ),
            ),
          ),
          onTap: () async {
            return WebNavigator.openUrl(url: "https://docs.flutter.dev/");
          },
        ),
        horizontalSpaceMedium,
        GestureDetector(
          child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Center(
              child: Image.network(
                "https://tratum.github.io/cloud-asset-storage/images/java.webp",
                cacheWidth: 28,
                cacheHeight: 28,
                height: 34,
                width: 34,
                color: Colors.white,
              ),
            ),
          ),
          onTap: () async {
            return WebNavigator.openUrl(
                url: "https://docs.oracle.com/en/java/");
          },
        ),
        horizontalSpaceMedium,
        GestureDetector(
          child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Center(
              child: Image.network(
                "https://tratum.github.io/cloud-asset-storage/images/rasa.webp",
                cacheWidth: 38,
                cacheHeight: 38,
                height: 38,
                width: 38,
                color: const Color(0XFF5a16ee),
              ),
            ),
          ),
          onTap: () async {
            return WebNavigator.openUrl(url: "https://rasa.com/docs/");
          },
        ),
        horizontalSpaceMedium,
        GestureDetector(
          child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Center(
              child: Image.network(
                "https://tratum.github.io/cloud-asset-storage/images/mongodb.webp",
                cacheWidth: 28,
                cacheHeight: 28,
                height: 34,
                width: 34,
              ),
            ),
          ),
          onTap: () async {
            return WebNavigator.openUrl(
                url: "https://www.mongodb.com/docs/compass/current/");
          },
        ),
        horizontalSpaceMedium,
        GestureDetector(
          child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Center(
              child: Image.network(
                'https://tratum.github.io/cloud-asset-storage/images/dart.webp',
                cacheHeight: 34,
                cacheWidth: 34,
                height: 34,
                width: 34,
              ),
            ),
          ),
          onTap: () async {
            return WebNavigator.openUrl(url: "https://dart.dev/guides");
          },
        ),
      ],
    );
  }
}

class DesktopAboutMeSection extends StatelessWidget {
  final Widget totalLeftSpacing;
  final double imgHeight;
  final double imgWidth;
  final double headingFontSize;
  final double subTextFontSize;

  const DesktopAboutMeSection({
    super.key,
    this.totalLeftSpacing = horizontalSpaceMassive,
    this.imgHeight = 550,
    this.imgWidth = 700,
    this.headingFontSize = 34,
    this.subTextFontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        totalLeftSpacing,
        Expanded(
          child: Container(
            height: imgHeight,
            width: imgWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://tratum.github.io/cloud-asset-storage/images/deskSetup.webp"),
                  fit: BoxFit.cover,
                )),
          ),
        ),
        totalLeftSpacing,
        Expanded(
          flex: 1,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            verticalSpaceMedium,
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: subTextFontSize,
                  fontWeight: FontWeight.w700,
                  color: const Color(0XFF3C4A53),
                ),
                children: const [
                  TextSpan(
                    text: "Namaste ( ",
                  ),
                  TextSpan(
                    text: "nam·aste",
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF000000),
                    ),
                  ),
                  TextSpan(
                    text: " ) As a Junior Full Stack Developer",
                  ),
                ],
              ),
            ),
            verticalSpaceTiny,
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
            const SizedBox(
              height: 30,
            ),
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
          ]),
        ),
      ],
    );
  }
}

class DesktopProjectSection extends StatelessWidget {
  final Widget totalLeftSpacing;
  final double headingFontSize;
  final double subHeadingFontSize;

  const DesktopProjectSection(
      {super.key,
      this.totalLeftSpacing = horizontalSpaceMassive,
      this.headingFontSize = 34,
      this.subHeadingFontSize = 28});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            totalLeftSpacing,
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
        verticalSpaceSmall,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            totalLeftSpacing,
            SelectableText(
              "Every project represents an original work of development.",
              style: TextStyle(
                fontFamily: 'Afacad',
                fontSize: subHeadingFontSize,
                fontWeight: FontWeight.w700,
                color: const Color(0XFF3C4A53),
              ),
            ),
            horizontalSpaceSmall,
            Image.network(
              "https://tratum.github.io/cloud-asset-storage/images/glowingStar.webp",
              cacheWidth: 28,
              cacheHeight: 28,
              height: 40,
              width: 40,
            )
          ],
        ),
      ],
    );
  }
}

class DesktopProject1 extends StatelessWidget {
  final Widget totalLeftSpacing;
  final double imgHeight;
  final double imgWidth;
  final double headingFontSize;
  final double subTextFontSize;

  const DesktopProject1(
      {super.key,
      this.totalLeftSpacing = horizontalSpaceMassive,
      this.imgHeight = 400,
      this.imgWidth = 600,
      this.headingFontSize = 26,
      this.subTextFontSize = 22});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        horizontalSpaceExtraLarge,
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
                context: context,
                imgPath:
                    "https://tratum.github.io/cloud-asset-storage/images/project1.webp");
          },
          child: Container(
            height: imgHeight,
            width: imgWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: const Offset(0, 3), // Offset position
                ),
              ],
              image: const DecorationImage(
                image: NetworkImage(
                    "https://tratum.github.io/cloud-asset-storage/images/project1.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        totalLeftSpacing,
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  SelectableText(
                    "Notely",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'RussoOne',
                      fontSize: headingFontSize,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.2,
                      color: const Color(0XFF000000),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              verticalSpaceLarge,
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: SelectableText(
                  "Notely is a cross-platform mobile application built using the Flutter framework and integrated with Firebase for backend support. It offers a seamless and intuitive interface for creating and managing notes and to-do lists.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: subTextFontSize,
                    fontWeight: FontWeight.w700,
                    color: const Color(0XFF3C4A53),
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  const Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF000000))),
                    onPressed: () async {
                      return WebNavigator.openUrl(
                          url: "https://github.com/tratum/Notely");
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text(
                              "Code",
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: subTextFontSize + 2,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            horizontalSpaceSmallPlus,
                            const FaIcon(
                              FontAwesomeIcons.github,
                              size: 32,
                              color: Color(0xFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).scaleOnHover(scale: 12),
                  const Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF000000))),
                    onPressed: () async {
                      return WebNavigator.openUrl(
                          url:
                              "https://drive.google.com/file/d/144agJN8F9uTBahio33sbb6eEoqbn3kJF/view?usp=sharing");
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text(
                              "Demo",
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: subTextFontSize + 2,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            horizontalSpaceSmallPlus,
                            const Icon(
                              Icons.open_in_new,
                              size: 32,
                              color: Color(0xFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).scaleOnHover(scale: 12),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DesktopProject2 extends StatelessWidget {
  final Widget totalLeftSpacing;
  final double imgHeight;
  final double imgWidth;
  final double headingFontSize;
  final double subTextFontSize;

  const DesktopProject2({
    super.key,
    this.imgHeight = 400,
    this.imgWidth = 600,
    this.totalLeftSpacing = horizontalSpaceMassive,
    this.headingFontSize = 26,
    this.subTextFontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  SelectableText(
                    "Apple Ripeness Detection",
                    style: TextStyle(
                      fontFamily: 'RussoOne',
                      fontSize: headingFontSize,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.2,
                      color: const Color(0XFF000000),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 50),
                child: SelectableText(
                  "Apple Ripeness Detection System leverages YOLOv8 and CNNs to automate ripeness assessment of an Apple. It employs a comprehensive dataset from Kaggle and the web, enhancing accuracy in real-world applications like sorting machines and consumer apps.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: subTextFontSize,
                    fontWeight: FontWeight.w700,
                    color: const Color(0XFF3C4A53),
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF000000))),
                    onPressed: () async {
                      return WebNavigator.openUrl(
                          url:
                              "https://github.com/tratum/apple_maturity_detection");
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text(
                              "Code",
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: subTextFontSize + 2,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            horizontalSpaceSmallPlus,
                            const FaIcon(
                              FontAwesomeIcons.github,
                              size: 32,
                              color: Color(0xFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).scaleOnHover(scale: 12),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
        totalLeftSpacing,
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
                context: context,
                imgPath:
                    "https://tratum.github.io/cloud-asset-storage/images/project2.webp");
          },
          child: Container(
            height: imgHeight,
            width: imgWidth, // Fixed width for the image
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: const Offset(0, 3), // Offset position
                ),
              ],
              image: const DecorationImage(
                image: NetworkImage(
                    "https://tratum.github.io/cloud-asset-storage/images/project2.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        horizontalSpaceLarge,
      ],
    );
  }
}

class DesktopProject3 extends StatelessWidget {
  final double imgHeight;
  final double imgWidth;
  final Widget iconLeftSpacing;
  final Widget totalLeftSpacing;
  final Widget headerLeftSpacing;
  final double headingFontSize;
  final double subTextFontSize;

  const DesktopProject3(
      {super.key,
      this.imgWidth = 400,
      this.imgHeight = 600,
      this.iconLeftSpacing = horizontalSpaceSuperMassive,
      this.totalLeftSpacing = horizontalSpaceMassive,
      this.headerLeftSpacing = horizontalSpaceSuperMassive,
      this.headingFontSize = 26,
      this.subTextFontSize = 22});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        horizontalSpaceLarge,
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
                context: context,
                imgPath:
                    "https://tratum.github.io/cloud-asset-storage/images/project3.webp");
          },
          child: Container(
            height: imgHeight,
            width: imgWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: const Offset(0, 3), // Offset position
                ),
              ],
              image: const DecorationImage(
                image: NetworkImage(
                    "https://tratum.github.io/cloud-asset-storage/images/project3.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        totalLeftSpacing,
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  SelectableText(
                    "Wanderlust Expeditions",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'RussoOne',
                      fontSize: headingFontSize,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.2,
                      color: const Color(0XFF000000),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              verticalSpaceLarge,
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: SelectableText(
                  "WanderLust Expeditions is a Travel Recommendation Website that beckons adventure seekers to explore the diverse tapestry of Bharat's destinations. Powered by Flutter for seamless cross-platform experience, it leverages GitHub Pages for backend management, employing web scraping and JSON for curated travel insights.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: subTextFontSize,
                    fontWeight: FontWeight.w700,
                    color: const Color(0XFF3C4A53),
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  const Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF000000))),
                    onPressed: () async {
                      return WebNavigator.openUrl(
                          url:
                              "https://github.com/tratum/wanderlust-expeditions");
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text(
                              "Code",
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: subTextFontSize + 2,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            horizontalSpaceSmallPlus,
                            const FaIcon(
                              FontAwesomeIcons.github,
                              size: 32,
                              color: Color(0xFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).scaleOnHover(scale: 12),
                  const Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF000000))),
                    onPressed: () async {
                      return WebNavigator.openUrl(
                        url: "https://tratum.github.io/wanderlust-expeditions/",
                      );
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text(
                              "Demo",
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: subTextFontSize + 2,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            horizontalSpaceSmallPlus,
                            const Icon(
                              Icons.open_in_new,
                              size: 32,
                              color: Color(0xFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).scaleOnHover(scale: 12),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DesktopProject4 extends StatelessWidget {
  final double imgHeight;
  final double imgWidth;
  final Widget iconLeftSpacing;
  final Widget totalLeftSpacing;
  final double headerLeftSpacing;
  final double subTextLeftSpacing;
  final double headingFontSize;
  final double subTextFontSize;

  const DesktopProject4(
      {super.key,
      this.imgWidth = 400,
      this.imgHeight = 600,
      this.iconLeftSpacing = horizontalSpaceSuperMassive,
      this.totalLeftSpacing = horizontalSpaceMassive,
      this.headerLeftSpacing = 200,
      this.subTextLeftSpacing = 50,
      this.headingFontSize = 26,
      this.subTextFontSize = 22});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  SelectableText(
                    "ClimaTrend",
                    style: TextStyle(
                      fontFamily: 'RussoOne',
                      fontSize: headingFontSize,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.2,
                      color: const Color(0XFF000000),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 50),
                child: SelectableText(
                  "ARIMA-Based Weather Forecasting of average temperatures in major Indian cities with Weather Prediction using ARIMA Model. Leveraging time series analysis and machine learning, the project utilizes Python, Pandas, and StatsModels for data manipulation, ARIMA modeling, and evaluation. Hardware and software requirements ensure seamless execution.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: subTextFontSize,
                    fontWeight: FontWeight.w700,
                    color: const Color(0XFF3C4A53),
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF000000))),
                    onPressed: () async {
                      return WebNavigator.openUrl(
                          url: "https://github.com/tratum/weather_prediction");
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text(
                              "Code",
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: subTextFontSize + 2,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            horizontalSpaceSmallPlus,
                            const FaIcon(
                              FontAwesomeIcons.github,
                              size: 32,
                              color: Color(0xFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).scaleOnHover(scale: 12),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
        totalLeftSpacing,
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
                context: context,
                imgPath:
                    "https://tratum.github.io/cloud-asset-storage/images/project4.webp");
          },
          child: Container(
            height: imgHeight,
            width: imgWidth, // Fixed width for the image
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: const Offset(0, 3), // Offset position
                ),
              ],
              image: const DecorationImage(
                image: NetworkImage(
                    "https://tratum.github.io/cloud-asset-storage/images/project4.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        horizontalSpaceLarge,
      ],
    );
  }
}

class DesktopContactSection extends StatelessWidget {
  final double totalLeftPadding;
  final double headingFontSize;
  final double subTextFontSize;
  final double imgHeight;
  final double imgWidth;

  const DesktopContactSection({
    super.key,
    this.headingFontSize = 34,
    this.subTextFontSize = 24,
    this.totalLeftPadding = 120,
    this.imgHeight = 30,
    this.imgWidth = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: totalLeftPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          verticalSpaceSmall,
          Row(
            children: [
              SelectableText(
                "I'm always open to new projects and opportunities.",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: subTextFontSize,
                  fontWeight: FontWeight.w900,
                  color: const Color(0XFF121212),
                ),
              ),
              horizontalSpaceTiny,
              SelectableText(
                "Drop a Hello,",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: subTextFontSize,
                  fontWeight: FontWeight.w900,
                  color: const Color(0XFF121212),
                ),
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            children: [
              SelectableText(
                "Let's Collaborate and Grow!",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: subTextFontSize,
                  fontWeight: FontWeight.w900,
                  color: const Color(0XFF121212),
                ),
              ),
              horizontalSpaceTiny,
              Image.network(
                "https://tratum.github.io/cloud-asset-storage/images/pointingDown.webp",
                cacheWidth: 28,
                cacheHeight: 28,
                height: imgHeight,
                width: imgWidth,
              ),
            ],
          ),
          verticalSpaceLarge,
          Row(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0XFF000000)),
                ),
                onPressed: () {
                  WebNavigator.launchEmail("tratum.connect@gmail.com");
                },
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Center(
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.envelopeOpen,
                          size: 24,
                          color: Color(0xFFFFFFFF),
                        ),
                        horizontalSpaceSmallPlus,
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
              horizontalSpaceLarge,
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0XFF000000)),
                ),
                onPressed: () async {
                  return WebNavigator.openUrl(
                    url: 'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.map_outlined,
                          size: 26,
                          color: Color(0xFFFFFFFF),
                        ),
                        horizontalSpaceSmallPlus,
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
          verticalSpaceLargePlus,
        ],
      ),
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
        padding: const EdgeInsets.only(left: 120, right: 120),
        child: Column(
          children: [
            verticalSpaceLarge,
            Row(
              children: [
                const SelectableText(
                  "© 2024 Saksham Rawat, Designed by Tratum",
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
                    scale: 12,
                    child: FaIcon(
                      FontAwesomeIcons.github,
                      color: Color(0XFFFFFFFF),
                      size: 36,
                    ),
                  ),
                ),
                horizontalSpaceMediumPlus,
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
            verticalSpaceLarge,
          ],
        ),
      ),
    );
  }
}

class DesktopResume extends StatelessWidget {
  final Widget totalLeftSpacing;
  final double pdfViewHeight;
  final double pdfViewWidth;
  final double headingFontSize;

  const DesktopResume({
    super.key,
    this.totalLeftSpacing = horizontalSpaceSuperMassive,
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            totalLeftSpacing,
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
        verticalSpaceLarge,
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
