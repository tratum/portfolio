import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tratum_portfolio/ui/common/ui_helpers.dart';
import 'package:tratum_portfolio/ui/widgets/mouse_transforms/scale_on_hover.dart';
import '../animation/scale_animation_image.dart';
import '../animation/scale_animation_svg.dart';
import 'app_functions.dart';

class HomeSection extends StatelessWidget {
  final Widget totalLeftSpacing;
  final Widget circularFramePadding;
  final double headerFontSize;
  final double subTextPadding;
  const HomeSection({
    Key? key,
    this.totalLeftSpacing = horizontalSpaceMassive,
    this.headerFontSize = 68,
    this.circularFramePadding = horizontalSpaceMega,
    this.subTextPadding = 250,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                totalLeftSpacing,
                Text(
                  "F u l l - S t a c k",
                  // style: GoogleFonts.bebasNeue(
                  //   fontSize: 68,
                  //   color: const Color(0XFF353839),
                  //   letterSpacing: 4,
                  //   fontWeight: FontWeight.w600,
                  // ),
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
                Text(
                  "D e v",
                  // style: GoogleFonts.bebasNeue(
                  //   fontSize: 68,
                  //   color: const Color(0XFF353839),
                  //   letterSpacing: 4,
                  //   fontWeight: FontWeight.w600,
                  // ),
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
                SvgPicture.asset(
                  'asset/svg/waving-hand.svg',
                  semanticsLabel: "Hi From My Side",
                  fit: BoxFit.fill,
                  width: 85,
                  height: 85,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: subTextPadding),
              child: const Text(
                "Hi, I'm Saksham Rawat. A passionate Full-Stack",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF6A8292),
                ),
              ),
            ),
            Row(children: [
              totalLeftSpacing,
              const Text(
                "Developer based in Jaipur, India",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF6A8292),
                ),
              ),
              horizontalSpaceSmall,
              GestureDetector(
                  child: Image.asset(
                    "asset/image/pin.png",
                    height: 25,
                    width: 25,
                  ),
                  onTap: () async {
                    return WebNavigator.openUrl(
                      url: 'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
                    );
                    // return _urlRedirect(url);
                  })
            ]),
            verticalSpaceMedium,
            Row(
              children: [
                totalLeftSpacing,
                GestureDetector(
                  child: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Color(0XFF000000),
                    size: 36,
                  ),
                  onTap: () async {
                    return WebNavigator.openUrl(
                      url: "https://www.linkedin.com/in/saksham-rawat-dev",
                    );
                  },
                ),
                horizontalSpaceMedium,
                GestureDetector(
                  child: const FaIcon(
                    FontAwesomeIcons.github,
                    color: Color(0XFF000000),
                    size: 36,
                  ),
                  onTap: () async {
                    return WebNavigator.openUrl(
                        url: "https://github.com/tratum");
                  },
                )
              ],
            ),
          ],
        ),
        circularFramePadding,
        const Stack(
          children: [
            ScaleSvgAnimation(
              imgPath: 'asset/svg/circular-frame-vector.svg',
              height: 320,
              width: 320,
            ),
            Positioned(
              top: 35,
              left: 63,
              child: ScaleImgAnimation(
                imgPath: "asset/image/profile_photo-circular.png",
                height: 250,
                width: 240,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TechStackSection extends StatelessWidget {
  final Widget totalLeftSpacing;
  const TechStackSection({
    Key? key,
    this.totalLeftSpacing = horizontalSpaceMassive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        totalLeftSpacing,
        const Text("Tech Stack",
            style: TextStyle(
              fontFamily: 'Afacad',
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Color(0XFF1B1B1B),
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
              child: Image.asset(
                "asset/image/python.png",
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
                child: Image.asset(
                  "asset/image/icon_flutter.png",
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
              child: Image.asset(
                "asset/image/java.png",
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
              child: Image.asset(
                "asset/image/rasa.png",
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
              child: Image.asset(
                "asset/image/mongodb.png",
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
              child: Image.asset(
                "asset/image/dart.png",
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

class AboutMeSection extends StatelessWidget {
  final Widget totalLeftSpacing;
  final double imgHeight;
  final double imgWidth;
  final double subTextFontSize;
  const AboutMeSection({
    Key? key,
    this.totalLeftSpacing = horizontalSpaceMassive,
    this.imgHeight = 550,
    this.imgWidth = 700,
    this.subTextFontSize = 22,
  }) : super(key: key);

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
                  image: AssetImage("asset/image/deskSetup.png"),
                  fit: BoxFit.cover,
                )),
          ),
        ),
        totalLeftSpacing,
        Expanded(
          flex: 1,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("About Me :",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: Color(0XFF00B9E8),
                )),
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
            Text(
              "I possess an immense Zeal for crafting seamless digital experiences through writing a clean and optimized code. With a strong belief in the power of teamwork, I value open communication and diverse perspectives. Eager to contribute my skills and enthusiasm to innovative projects, I look forward to fostering a collaborative spirit while delivering a coding excellence.",
              style: TextStyle(
                fontFamily: 'Afacad',
                fontSize: subTextFontSize,
                fontWeight: FontWeight.w700,
                color: const Color(0XFF3C4A53),
              ),
              overflow: TextOverflow.visible,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Let's Build Something Extraordinary !!!!",
              style: TextStyle(
                fontFamily: 'Afacad',
                fontSize: subTextFontSize,
                fontWeight: FontWeight.w800,
                color: const Color(0XFF353839),
                letterSpacing: 2,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class ProjectSection extends StatelessWidget {
  final Widget totalLeftSpacing;
  const ProjectSection({
    Key? key,
    this.totalLeftSpacing = horizontalSpaceSuperMassive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            totalLeftSpacing,
            const Text(
              "Portfolio: ",
              style: TextStyle(
                fontFamily: 'Afacad',
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Color(0XFF00B9E8),
                letterSpacing: 2.5,
              ),
            ),
          ],
        ),
        verticalSpaceSmall,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            totalLeftSpacing,
            const Text(
              "Every project represents an original work of development.",
              style: TextStyle(
                fontFamily: 'Afacad',
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Color(0XFF3C4A53),
              ),
            ),
            horizontalSpaceSmall,
            Image.asset(
              "asset/image/glowingStar.png",
              height: 40,
              width: 40,
            )
          ],
        ),
      ],
    );
  }
}

class Project1 extends StatelessWidget {
  final Widget totalLeftSpacing;
  final Widget headerLeftSpacing;
  final Widget iconLeftSpacing;
  final double imgHeight;
  final double imgWidth;
  final double headingFontSize;
  final double subTextFontSize;
  const Project1(
      {Key? key,
      this.totalLeftSpacing = horizontalSpaceSuperMassive,
      this.headerLeftSpacing = horizontalSpaceSuperMassive,
      this.iconLeftSpacing = horizontalSpaceMassive,
      this.imgHeight = 400,
      this.imgWidth = 550,
      this.headingFontSize = 26,
      this.subTextFontSize = 22})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            horizontalSpaceMassive,
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () async {
                      return ImageView.showImageDialog(
                          context: context,
                          imgPath: "asset/image/project1.png");
                    },
                    child: Container(
                      height: imgHeight,
                      width: imgWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("asset/image/project1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            horizontalSpaceSuperMassive,
                            Text(
                              "Notely",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: headingFontSize,
                                fontWeight: FontWeight.w900,
                                color: const Color(0XFF000000),
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceLarge,
                        Padding(
                          padding: const EdgeInsets.only(left: 60, right: 60),
                          child: Text(
                            "Notely is a cross-platform mobile application built using the Flutter framework and integrated with Firebase for backend support. It offers a seamless and intuitive interface for creating and managing notes and to-do lists.",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: 'Afacad',
                              fontSize: subTextFontSize,
                              fontWeight: FontWeight.w700,
                              color: const Color(0XFF3C4A53),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            iconLeftSpacing,
                            GestureDetector(
                              child: Row(
                                children: [
                                  Text(
                                    "Code",
                                    style: TextStyle(
                                      fontFamily: 'Afacad',
                                      fontSize: subTextFontSize,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0XFF3C4A53),
                                    ),
                                  ),
                                  horizontalSpaceTiny,
                                  const FaIcon(
                                    FontAwesomeIcons.github,
                                    color: Color(0XFF000000),
                                    size: 26,
                                  ),
                                ],
                              ),
                              onTap: () async {
                                return WebNavigator.openUrl(
                                    url: "https://github.com/tratum/Notely");
                              },
                            ),
                            const SizedBox(
                              width: 110,
                            ),
                            GestureDetector(
                              child: Row(
                                children: [
                                  Text(
                                    "Demo",
                                    style: TextStyle(
                                      fontFamily: 'Afacad',
                                      fontSize: subTextFontSize,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0XFF3C4A53),
                                    ),
                                  ),
                                  horizontalSpaceTiny,
                                  const Icon(
                                    Icons.open_in_new,
                                    color: Color(0XFF000000),
                                    size: 24,
                                  ),
                                ],
                              ),
                              onTap: () async {
                                return WebNavigator.openUrl(
                                    url:
                                        "https://drive.google.com/file/d/144agJN8F9uTBahio33sbb6eEoqbn3kJF/view?usp=sharing");
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 90,
        ),
      ],
    );
  }
}

class Project2 extends StatelessWidget {
  final Widget totalLeftSpacing;
  final double imgHeight;
  final double imgWidth;
  final double headingLeftPadding;
  final Widget iconLeftPadding;
  final double headingFontSize;
  final double subTextFontSize;
  const Project2({
    Key? key,
    this.imgHeight = 400,
    this.imgWidth = 600,
    this.headingLeftPadding = 260,
    this.totalLeftSpacing = horizontalSpaceMassive,
    this.iconLeftPadding = horizontalSpaceMega,
    this.headingFontSize = 26,
    this.subTextFontSize = 22,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: headingLeftPadding),
          child: Text(
            "Smart Apple Ripeness Detection System",
            style: TextStyle(
              fontFamily: 'Afacad',
              fontSize: headingFontSize,
              fontWeight: FontWeight.w900,
              color: const Color(0XFF000000),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            totalLeftSpacing,
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 50),
                    child: Text(
                      "Apple Maturity Detection Project leverages YOLOv8 and CNNs to automate ripeness assessment. It employs a comprehensive dataset from Kaggle and the web, enhancing accuracy in real-world applications like sorting machines and consumer apps. Requirements include a computer with a stable internet connection and a modern web browser.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontSize: subTextFontSize,
                        fontWeight: FontWeight.w700,
                        color: const Color(0XFF3C4A53),
                      ),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      iconLeftPadding,
                      GestureDetector(
                        child: Row(
                          children: [
                            Text(
                              "Code",
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: subTextFontSize,
                                fontWeight: FontWeight.w900,
                                color: const Color(0XFF3C4A53),
                              ),
                            ),
                            horizontalSpaceTiny,
                            const FaIcon(
                              FontAwesomeIcons.github,
                              color: Color(0XFF000000),
                              size: 26,
                            ),
                          ],
                        ),
                        onTap: () async {
                          return WebNavigator.openUrl(
                              url:
                                  "https://github.com/tratum/apple_maturity_detection");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            horizontalSpaceLarge,
            GestureDetector(
              onTap: () async {
                return ImageView.showImageDialog(
                    context: context, imgPath: "asset/image/project2.jpg");
              },
              child: Container(
                height: imgHeight,
                width: imgWidth, // Fixed width for the image
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("asset/image/project2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            totalLeftSpacing,
          ],
        ),
        verticalSpaceLarge,
      ],
    );
  }
}

class Project3 extends StatelessWidget {
  final double imgHeight;
  final double imgWidth;
  final Widget iconLeftSpacing;
  final Widget totalLeftSpacing;
  final Widget headerLeftSpacing;
  final double headingFontSize;
  final double subTextFontSize;
  const Project3(
      {Key? key,
      this.imgWidth = 400,
      this.imgHeight = 600,
      this.iconLeftSpacing = horizontalSpaceSuperMassive,
      this.totalLeftSpacing = horizontalSpaceMassive,
      this.headerLeftSpacing = horizontalSpaceSuperMassive,
      this.headingFontSize = 26,
      this.subTextFontSize = 22})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            totalLeftSpacing,
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () async {
                      return ImageView.showImageDialog(
                          context: context,
                          imgPath: "asset/image/project3.png");
                    },
                    child: Container(
                      height: imgHeight,
                      width: imgWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("asset/image/project3.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            headerLeftSpacing,
                            Text(
                              "Wanderlust Expeditions",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: headingFontSize,
                                fontWeight: FontWeight.w900,
                                color: const Color(0XFF000000),
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceLarge,
                        Padding(
                          padding: const EdgeInsets.only(left: 60, right: 60),
                          child: Text(
                            "WanderLust Expeditions beckons adventure seekers to explore the diverse tapestry of Bharat's destinations. Powered by Flutter for seamless cross-platform experience, it leverages GitHub Pages for backend management, employing web scraping and JSON for curated travel insights.",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: 'Afacad',
                              fontSize: subTextFontSize,
                              fontWeight: FontWeight.w700,
                              color: const Color(0XFF3C4A53),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            iconLeftSpacing,
                            GestureDetector(
                              child: Row(
                                children: [
                                  Text(
                                    "Code",
                                    style: TextStyle(
                                      fontFamily: 'Afacad',
                                      fontSize: subTextFontSize,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0XFF3C4A53),
                                    ),
                                  ),
                                  horizontalSpaceTiny,
                                  const FaIcon(
                                    FontAwesomeIcons.github,
                                    color: Color(0XFF000000),
                                    size: 26,
                                  ),
                                ],
                              ),
                              onTap: () async {
                                return WebNavigator.openUrl(
                                    url:
                                        "https://github.com/tratum/wanderlust-expeditions");
                              },
                            ),
                            const SizedBox(
                              width: 110,
                            ),
                            GestureDetector(
                              child: Row(
                                children: [
                                  Text(
                                    "Demo",
                                    style: TextStyle(
                                      fontFamily: 'Afacad',
                                      fontSize: subTextFontSize,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0XFF3C4A53),
                                    ),
                                  ),
                                  horizontalSpaceTiny,
                                  const Icon(
                                    Icons.open_in_new,
                                    color: Color(0XFF000000),
                                    size: 24,
                                  ),
                                ],
                              ),
                              onTap: () async {
                                return WebNavigator.openUrl(
                                    url:
                                        "https://tratum.github.io/wanderlust-expeditions/");
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 90,
        ),
      ],
    );
  }
}

class Project4 extends StatelessWidget {
  final double imgHeight;
  final double imgWidth;
  final Widget iconLeftSpacing;
  final Widget totalLeftSpacing;
  final double headerLeftSpacing;
  final double subTextLeftSpacing;
  final double headingFontSize;
  final double subTextFontSize;
  const Project4(
      {Key? key,
      this.imgWidth = 400,
      this.imgHeight = 600,
      this.iconLeftSpacing = horizontalSpaceSuperMassive,
      this.totalLeftSpacing = horizontalSpaceMassive,
      this.headerLeftSpacing = 200,
      this.subTextLeftSpacing = 50,
      this.headingFontSize = 26,
      this.subTextFontSize = 22})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: headerLeftSpacing),
          child: Text(
            "ClimaTrend: ARIMA-Based Weather Forecasting",
            style: TextStyle(
              fontFamily: 'Afacad',
              fontSize: headingFontSize,
              fontWeight: FontWeight.w900,
              color: const Color(0XFF000000),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            totalLeftSpacing,
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: subTextLeftSpacing),
                    child: Text(
                      "Forecasting average temperatures in major Indian cities with Weather Prediction using ARIMA Model. Leveraging time series analysis and machine learning, the project utilizes Python, Pandas, and StatsModels for data manipulation, ARIMA modeling, and evaluation. Hardware and software requirements ensure seamless execution.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontSize: subTextFontSize,
                        fontWeight: FontWeight.w700,
                        color: const Color(0XFF3C4A53),
                      ),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      iconLeftSpacing,
                      GestureDetector(
                        child: Row(
                          children: [
                            Text(
                              "Code",
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: subTextFontSize,
                                fontWeight: FontWeight.w900,
                                color: const Color(0XFF3C4A53),
                              ),
                            ),
                            horizontalSpaceTiny,
                            const FaIcon(
                              FontAwesomeIcons.github,
                              color: Color(0XFF000000),
                              size: 26,
                            ),
                          ],
                        ),
                        onTap: () async {
                          return WebNavigator.openUrl(
                              url:
                                  "https://github.com/tratum/weather_prediction");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            totalLeftSpacing,
            GestureDetector(
              onTap: () async {
                return ImageView.showImageDialog(
                    context: context, imgPath: "asset/image/project4.jpeg");
              },
              child: Container(
                height: imgHeight,
                width: imgWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("asset/image/project4.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            totalLeftSpacing,
          ],
        ),
        verticalSpaceLarge,
      ],
    );
  }
}

class ProjectSkeleton extends StatelessWidget {
  const ProjectSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.black.withOpacity(0.04),
          height: 500,
          width: MediaQuery.of(context).size.width / 2.1,
        ),
        Container(
          color: Colors.black.withOpacity(0.04),
          height: 500,
          width: MediaQuery.of(context).size.width / 2.1,
        ),
      ],
    );
  }
}

class ContactSection extends StatelessWidget {
  final double totalLeftPadding;
  final double headingFontSize;
  final double subTextFontSize;
  const ContactSection({
    Key? key,
    this.headingFontSize = 30,
    this.subTextFontSize = 24,
    this.totalLeftPadding = 120,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: totalLeftPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CONTACT ME",
            style: TextStyle(
              fontFamily: 'Afacad',
              fontSize: headingFontSize,
              fontWeight: FontWeight.w900,
              color: const Color(0XFF00B9E8),
            ),
          ),
          verticalSpaceSmall,
          Row(
            children: [
              Text(
                "Drop a Hello, Let's Collaborate and Grow!",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: subTextFontSize,
                  fontWeight: FontWeight.w900,
                  color: const Color(0XFF121212),
                ),
              ),
              horizontalSpaceSmall,
              Image.asset(
                "asset/image/pointingDown.png",
                height: 30,
                width: 30,
              )
            ],
          ),
          verticalSpaceLarge,
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  WebNavigator.launchEmail("tratum.connect@gmail.com");
                },
                child: const ScaleOnHover(
                  scale: 12,
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail_outline_rounded,
                        size: 42,
                        color: Color(0XFF3498db),
                      ),
                      horizontalSpaceTiny,
                      Text(
                        "tratum.connect@gmail.com",
                        style: TextStyle(
                          fontFamily: 'Afacad',
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF121212),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              horizontalSpaceLarge,
              GestureDetector(
                onTap: () async{
                  return WebNavigator.openUrl(
                    url: 'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
                  );
                },
                  child: const ScaleOnHover(
                scale: 12,
                child: Row(children: [
                  Icon(
                    Icons.map_outlined,
                    size: 42,
                    color: Color(0XFF00A86B),
                  ),
                  horizontalSpaceTiny,
                  Text(
                    "Jaipur, Rajasthan, India",
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF121212),
                    ),
                  ),
                ]),
              ),
              ),
            ],
          ),
          verticalSpaceSemiLarge,
        ],
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF000000),
      child: Padding(
        padding: const EdgeInsets.only(left: 120,right: 120),
        child: Column(
          children: [
            verticalSpaceLarge,
            Row(
              children: [
                const Text("tratum Copyright © 2024 tratum-All Rights Reserved || Designed by tratum",
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: 'Afacad',
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () async{
                    return WebNavigator.openUrl(
                      url: 'https://github.com/tratum',
                    );
                  },
                  child: ScaleOnHover(
                    scale: 12,
                    child: Image.asset(
                      "asset/image/github-white.png",
                      height: 34,
                      width: 34,
                    ),
                  ),
                ),
                horizontalSpaceSemiMedium,
                GestureDetector(
                  onTap: () async {
                    return WebNavigator.openUrl(
                      url: 'https://www.linkedin.com/in/saksham-rawat-dev/',
                    );
                  },
                  child: ScaleOnHover(
                    scale: 12,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        color: Color(0XFFFFFFFF),
                        // borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Image.asset(
                          "asset/image/linkedIn.png",
                          height: 22,
                          width: 22,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
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

