import 'app_functions.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../common/ui_helpers.dart';
import '../widgets/mouse_transforms/scale_on_hover.dart';
import '../animation/scale_animation_image.dart';
import '../animation/scale_animation_svg.dart';

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
                  child: Image.network(
                    "https://tratum.github.io/cloud-asset-storage/images/pin.png",
                    cacheWidth: 28,
                    cacheHeight: 28,
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
              imgPath: 'https://tratum.github.io/cloud-asset-storage/svg/circular-frame-vector.svg',
              height: 430,
              width: 430,
            ),
            Positioned(
              top: 60,
              left: 65,
              child: ScaleImgAnimation(
                imgPath: "https://tratum.github.io/cloud-asset-storage/images/profile_photo-circular.png",
                height: 310,
                width: 300,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HomeSectionMobile extends StatelessWidget {
  final Widget headerLeftPadding;
  final Widget iconLeftPadding;
  final double leftStackImageValue;
  final double topStackImageValue;
  final double imgHeight;
  final double imgWidth;
  final double headerFontSize;
  const HomeSectionMobile({
    Key? key,
    this.headerLeftPadding = horizontalSpaceMedium,
    this.iconLeftPadding = horizontalSpaceMedium,
    this.leftStackImageValue = 63,
    this.topStackImageValue=30,
    this.imgWidth=240,
    this.imgHeight=250,
    this.headerFontSize=42,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            headerLeftPadding,
            Text(
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
            headerLeftPadding,
            Text(
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
              width: 45,
              height: 45,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        RichText(
            text: TextSpan(
              style: const TextStyle(
                fontFamily: 'Afacad',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0XFF6A8292),
              ),
              children: [
                const TextSpan(
                  text: "Hi, I'm Saksham Rawat. A passionate Full-Stack Developer based in Jaipur, India",
                ),
                WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 8.0),
                      child: GestureDetector(
                          child: Image.network(
                            "https://tratum.github.io/cloud-asset-storage/images/pin.png",
                            cacheWidth: 28,
                            cacheHeight: 28,
                            height: 25,
                            width: 25,
                          ),
                          onTap: () async {
                            return WebNavigator.openUrl(
                              url: 'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
                            );
                            // return _urlRedirect(url);
                          }),
                    ),
                ),
              ]
            ),
        ),
        verticalSpaceMedium,
        Row(
          children: [
            iconLeftPadding,
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
        verticalSpaceMedium,
        Stack(
          children: [
            const ScaleSvgAnimation(
              imgPath: 'https://tratum.github.io/cloud-asset-storage/svg/circular-frame-vector.svg',
              height: 320,
              width: 320,
            ),
            Positioned(
              top: topStackImageValue,
              left: leftStackImageValue,
              child: ScaleImgAnimation(
                imgPath: "https://tratum.github.io/cloud-asset-storage/images/profile_photo-circular.png",
                height: imgHeight,
                width: imgWidth,
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
              child:Image.network(
                "https://tratum.github.io/cloud-asset-storage/images/python.png",
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
                  "https://tratum.github.io/cloud-asset-storage/images/flutter.png",
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
                "https://tratum.github.io/cloud-asset-storage/images/java.png",
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
                "https://tratum.github.io/cloud-asset-storage/images/rasa.png",
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
                "https://tratum.github.io/cloud-asset-storage/images/mongodb.png",
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
                'https://tratum.github.io/cloud-asset-storage/images/dart.png',
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

class TechStackSectionMobile extends StatelessWidget {
  final Widget totalLeftSpacing;
  const TechStackSectionMobile({
    Key? key,
    this.totalLeftSpacing = horizontalSpaceMedium,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpaceMedium,
        Row(
          children: [
            const Text("Tech Stack",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF1B1B1B),
                )),
            totalLeftSpacing,
            Container(
              height: 26,
              width: 3,
              color: const Color(0XFF1B1B1B),
            ),
            totalLeftSpacing,
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
            totalLeftSpacing,
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
            totalLeftSpacing,
          ],
        ),
        verticalSpaceMedium,
        Row(
          children: [
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
                    "https://tratum.github.io/cloud-asset-storage/images/python.png",
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
            totalLeftSpacing,
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
                      "https://tratum.github.io/cloud-asset-storage/images/flutter.png",
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
            totalLeftSpacing,
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
                    "https://tratum.github.io/cloud-asset-storage/images/java.png",
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
            totalLeftSpacing,
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
                    "https://tratum.github.io/cloud-asset-storage/images/rasa.png",
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
          ],
        ),
        verticalSpaceMedium,
        Row(
          children: [
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
                    "https://tratum.github.io/cloud-asset-storage/images/mongodb.png",
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
            totalLeftSpacing,
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
                    "https://tratum.github.io/cloud-asset-storage/images/dart.png",
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
        )
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
                  image: NetworkImage("https://tratum.github.io/cloud-asset-storage/images/deskSetup.png"),
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

class AboutMeSectionMobile extends StatelessWidget {
  const AboutMeSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 160),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Text(
                "About Me :",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Color(0XFF00B9E8),
                ),
              ),
                verticalSpaceMedium,
                GestureDetector(
                  onTap: () async {
                    return ImageView.showImageDialog(
                        context: context, imgPath: "https://tratum.github.io/cloud-asset-storage/images/deskSetup.png");
                  },
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: NetworkImage("https://tratum.github.io/cloud-asset-storage/images/deskSetup.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              verticalSpaceMedium,
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF3C4A53),
                  ),
                  children: [
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
                    TextSpan(
                      text:
                          "I possess an immense Zeal for crafting seamless digital experiences through writing a clean and optimized code. With a strong belief in the power of teamwork, I value open communication and diverse perspectives. Eager to contribute my skills and enthusiasm to innovative projects, I look forward to fostering a collaborative spirit while delivering a coding excellence.",
                    )
                  ],
                ),
              ),
              verticalSpaceLarge,
              const Text(
                "Let's Build Something Extraordinary Together !!",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Color(0XFFE53935),
                  letterSpacing: 1.5,
                ),
              ),
            ]),
          ),
        ],
      ),
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
            Image.network(
              "https://tratum.github.io/cloud-asset-storage/images/glowingStar.png",
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

class ProjectSectionMobile extends StatelessWidget {
  const ProjectSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpaceMassive,
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Portfolio: ",
              style: TextStyle(
                fontFamily: 'Afacad',
                fontSize: 24,
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
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF3C4A53),
                  ),
                  children: [
                    const TextSpan(
                      text:
                          'Every project represents an unique piece of development   ',
                    ),
                    WidgetSpan(
                      child: Image.network(
                        "https://tratum.github.io/cloud-asset-storage/images/glowingStar.png",
                        cacheWidth: 28,
                        cacheHeight: 28,
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                          imgPath: "https://tratum.github.io/cloud-asset-storage/images/project1.png");
                    },
                    child: Container(
                      height: imgHeight,
                      width: imgWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: NetworkImage("https://tratum.github.io/cloud-asset-storage/images/project1.png"),
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

class Project1Mobile extends StatelessWidget {
  const Project1Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 90,
        ),
        const Align(
          alignment: Alignment.center,
          child: Text(
            "Notely",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Afacad',
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color(0XFF000000),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
                context: context, imgPath: "https://tratum.github.io/cloud-asset-storage/images/project1.png");
          },
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage("https://tratum.github.io/cloud-asset-storage/images/project1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Notely is a cross-platform mobile application built using the Flutter framework and integrated with Firebase for backend support. It offers a seamless and intuitive interface for creating and managing notes and to-do lists.",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF3C4A53),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: const Row(
                            children: [
                              Text(
                                "Code",
                                style: TextStyle(
                                  fontFamily: 'Afacad',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0XFF3C4A53),
                                ),
                              ),
                              horizontalSpaceTiny,
                              FaIcon(
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
                          width: 40,
                        ),
                        GestureDetector(
                          child: const Row(
                            children: [
                              Text(
                                "Demo",
                                style: TextStyle(
                                  fontFamily: 'Afacad',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0XFF3C4A53),
                                ),
                              ),
                              horizontalSpaceTiny,
                              Icon(
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
                      "Apple Maturity Detection System leverages YOLOv8 and CNNs to automate ripeness assessment of an Apple. It employs a comprehensive dataset from Kaggle and the web, enhancing accuracy in real-world applications like sorting machines and consumer apps.",
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
                    context: context, imgPath: "https://tratum.github.io/cloud-asset-storage/images/project2.jpg");
              },
              child: Container(
                height: imgHeight,
                width: imgWidth, // Fixed width for the image
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image:  NetworkImage("https://tratum.github.io/cloud-asset-storage/images/project2.jpg"),
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

class Project2Mobile extends StatelessWidget {
  const Project2Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 90,
        ),
        const Row(
          children: [
            Expanded(
              child: Text(
                "Smart Apple Ripeness Detection System",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Color(0XFF000000),
                ),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
                context: context, imgPath: "https://tratum.github.io/cloud-asset-storage/images/project2.jpg");
          },
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image:  NetworkImage("https://tratum.github.io/cloud-asset-storage/images/project2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Apple Maturity Detection System leverages YOLOv8 and CNNs to automate ripeness assessment of an Apple. It employs a comprehensive dataset from Kaggle and the web, enhancing accuracy in real-world applications like sorting machines and consumer apps.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF3C4A53),
                      ),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    child: const Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Spacer(),
                          Text(
                            "Code",
                            style: TextStyle(
                              fontFamily: 'Afacad',
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Color(0XFF3C4A53),
                            ),
                          ),
                          horizontalSpaceTiny,
                          FaIcon(
                            FontAwesomeIcons.github,
                            color: Color(0XFF000000),
                            size: 26,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    onTap: () async {
                      return WebNavigator.openUrl(
                          url:
                              "https://github.com/tratum/apple_maturity_detection");
                    },
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
                          imgPath: "https://tratum.github.io/cloud-asset-storage/images/project3.png");
                    },
                    child: Container(
                      height: imgHeight,
                      width: imgWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image:  NetworkImage("https://tratum.github.io/cloud-asset-storage/images/project3.png"),
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
                            "WanderLust Expeditions is a Travel Recommendation Website that beckons adventure seekers to explore the diverse tapestry of Bharat's destinations. Powered by Flutter for seamless cross-platform experience, it leverages GitHub Pages for backend management, employing web scraping and JSON for curated travel insights.",
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

class Project3Mobile extends StatelessWidget {
  const Project3Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 90,
        ),
        const Align(
          alignment: Alignment.center,
          child: Text(
            "Wanderlust Expeditions",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Afacad',
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color(0XFF000000),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
                context: context, imgPath: "https://tratum.github.io/cloud-asset-storage/images/project3.png");
          },
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image:  NetworkImage("https://tratum.github.io/cloud-asset-storage/images/project3.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "WanderLust Expeditions is a Travel Recommendation Website that beckons adventure seekers to explore the diverse tapestry of Bharat's destinations. Powered by Flutter for seamless cross-platform experience, it leverages GitHub Pages for backend management, employing web scraping and JSON for curated travel insights.",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF3C4A53),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: const Row(
                            children: [
                              Text(
                                "Code",
                                style: TextStyle(
                                  fontFamily: 'Afacad',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0XFF3C4A53),
                                ),
                              ),
                              horizontalSpaceTiny,
                              FaIcon(
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
                          width: 40,
                        ),
                        GestureDetector(
                          child: const Row(
                            children: [
                              Text(
                                "Demo",
                                style: TextStyle(
                                  fontFamily: 'Afacad',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0XFF3C4A53),
                                ),
                              ),
                              horizontalSpaceTiny,
                              Icon(
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
                    context: context, imgPath: "https://tratum.github.io/cloud-asset-storage/images/project4.jpeg");
              },
              child: Container(
                height: imgHeight,
                width: imgWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image:  NetworkImage("https://tratum.github.io/cloud-asset-storage/images/project4.jpeg"),
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

class Project4Mobile extends StatelessWidget {
  const Project4Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 90,
        ),
        const Row(
          children: [
            Expanded(
              child: Text(
                "ClimaTrend: ARIMA-Based Weather Forecasting",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Color(0XFF000000),
                ),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
                context: context, imgPath: "https://tratum.github.io/cloud-asset-storage/images/project4.jpeg");
          },
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image:  NetworkImage("https://tratum.github.io/cloud-asset-storage/images/project4.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Forecasting average temperatures in major Indian cities with Weather Prediction using ARIMA Model. Leveraging time series analysis and machine learning, the project utilizes Python, Pandas, and StatsModels for data manipulation, ARIMA modeling, and evaluation. Hardware and software requirements ensure seamless execution.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF3C4A53),
                      ),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    child: const Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Spacer(),
                          Text(
                            "Code",
                            style: TextStyle(
                              fontFamily: 'Afacad',
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Color(0XFF3C4A53),
                            ),
                          ),
                          horizontalSpaceTiny,
                          FaIcon(
                            FontAwesomeIcons.github,
                            color: Color(0XFF000000),
                            size: 26,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    onTap: () async {
                      return WebNavigator.openUrl(
                          url: "https://github.com/tratum/weather_prediction");
                    },
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
            "CONTACT",
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
              Image.network(
                "https://tratum.github.io/cloud-asset-storage/images/pointingDown.png",
                cacheWidth: 28,
                cacheHeight: 28,
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
                onTap: () async {
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

class ContactMobileSection extends StatelessWidget {
  const ContactMobileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "CONTACT",
          style: TextStyle(
            fontFamily: 'Afacad',
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: Color(0XFF00B9E8),
          ),
        ),
        verticalSpaceSmall,
        Row(
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color(0XFF121212),
                    ),
                    children: [
                      const TextSpan(
                        text: "Drop a Hello, Let's Collaborate and Grow !!",
                      ),
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8,top: 8),
                          child: Image.network(
                            "https://tratum.github.io/cloud-asset-storage/images/pointingDown.png",
                            cacheWidth: 28,
                            cacheHeight: 28,
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
        verticalSpaceMedium,
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {
              WebNavigator.launchEmail("tratum.connect@gmail.com");
            },
            child: const ScaleOnHover(
              scale: 12,
              child: Row(
                children: [
                  Icon(
                    Icons.mail_outline_rounded,
                    size: 32,
                    color: Color(0XFF3498db),
                  ),
                  horizontalSpaceTiny,
                  Text(
                    "tratum.connect@gmail.com",
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF121212),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        verticalSpaceSmall,
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () async {
              return WebNavigator.openUrl(
                url: 'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
              );
            },
            child: const ScaleOnHover(
              scale: 12,
              child: Row(children: [
                Icon(
                  Icons.map_outlined,
                  size: 32,
                  color: Color(0XFF00A86B),
                ),
                horizontalSpaceTiny,
                Text(
                  "Jaipur, Rajasthan, India",
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF121212),
                  ),
                ),
              ]),
            ),
          ),
        ),
        verticalSpaceSemiMedium,
      ],
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
        padding: const EdgeInsets.only(left: 120, right: 120),
        child: Column(
          children: [
            verticalSpaceLarge,
            Row(
              children: [
                const Text(
                  "tratum Copyright © 2024 tratum-All Rights Reserved || Designed by tratum",
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
                horizontalSpaceSemiMedium,
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

class FooterSectionMobile extends StatelessWidget {
  const FooterSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF000000),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          verticalSpaceSemiMedium,
          const Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 18, right: 18),
                        child: Text(
                          "tratum Copyright © 2024 tratum All Rights Reserved",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Afacad',
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpaceSmall,
                Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 18, right: 18),
                      child: Text(
                        "Designed by tratum",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontFamily: 'Afacad',
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
          verticalSpaceSemiMedium,
          Row(
            children: [
              const Spacer(),
              GestureDetector(
                child: const FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Color(0XFFFFFFFF),
                  size: 36,
                ),
                onTap: () async {
                  return WebNavigator.openUrl(
                    url: "https://www.linkedin.com/in/saksham-rawat-dev",
                  );
                },
              ),
              horizontalSpaceSemiLarge,
              GestureDetector(
                child: const FaIcon(
                  FontAwesomeIcons.github,
                  color: Color(0XFFFFFFFF),
                  size: 36,
                ),
                onTap: () async {
                  return WebNavigator.openUrl(url: "https://github.com/tratum");
                },
              ),
              const Spacer(),
            ],
          ),
          verticalSpaceSemiMedium,
        ],
      ),
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