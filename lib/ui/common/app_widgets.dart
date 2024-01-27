import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tratum_portfolio/ui/common/ui_helpers.dart';
import '../animation/scale_animation_image.dart';
import '../animation/scale_animation_svg.dart';
import 'app_functions.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                horizontalSpaceMega,
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
                    fontSize: 68,
                    fontWeight: FontWeight.w900,
                    color: Color(0XFF353839),
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                horizontalSpaceMega,
                const Text(
                  "D e v",
                  // style: GoogleFonts.bebasNeue(
                  //   fontSize: 68,
                  //   color: const Color(0XFF353839),
                  //   letterSpacing: 4,
                  //   fontWeight: FontWeight.w600,
                  // ),
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: 68,
                    fontWeight: FontWeight.w900,
                    color: Color(0XFF353839),
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
            const Padding(
              padding: EdgeInsets.only(left: 250),
              child: Text(
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
              horizontalSpaceMega,
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
                      url:
                      'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
                    );
                    // return _urlRedirect(url);
                  })
            ]),
            verticalSpaceMedium,
            Row(
              children: [
                horizontalSpaceMega,
                GestureDetector(
                  child: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Color(0XFF000000),
                    size: 36,
                  ),
                  onTap: () async {
                    return WebNavigator.openUrl(
                      url:
                      "https://www.linkedin.com/in/saksham-rawat-dev",
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
            )
          ],
        ),
        horizontalSpaceMega,
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
                imgPath:
                "asset/image/profile_photo-circular.png",
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
  const TechStackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        horizontalSpaceMega,
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
                url:
                "https://developer.mozilla.org/en-US/docs/Web/HTML");
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
                url:
                "https://developer.mozilla.org/en-US/docs/Web/CSS");
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
            return WebNavigator.openUrl(
                url: "https://docs.python.org/3/");
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
            return WebNavigator.openUrl(
                url: "https://docs.flutter.dev/");
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
            return WebNavigator.openUrl(
                url: "https://rasa.com/docs/");
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
                url:
                "https://www.mongodb.com/docs/compass/current/");
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
            return WebNavigator.openUrl(
                url: "https://dart.dev/guides");
          },
        ),
      ],
    );
  }
}
class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        horizontalSpaceMassive,
        Container(
          height: 550,
          width: 700,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image:
                AssetImage("asset/image/deskSetup.png"),
                fit: BoxFit.cover,
              )),
        ),
        horizontalSpaceMassive,
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("About Me :",
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF00B9E8),
                  )),
              verticalSpaceMedium,
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: 22,
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
                      text:
                      " ) As a Junior Full Stack Developer",
                    ),
                  ],
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "I possess an immense Zeal for crafting seamless",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF3C4A53),
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "digital experiences through writing a clean and",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF3C4A53),
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "optimized code. With a strong belief in the power",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF3C4A53),
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "of teamwork, I value open communication and ",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF3C4A53),
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "diverse perspectives. Eager to contribute my skills",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF3C4A53),
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "and enthusiasm to innovative projects, I look",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF3C4A53),
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "forward to fostering a collaborative spirit while ",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF3C4A53),
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "delivering a coding excellence.",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF3C4A53),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Let's Build Something Extraordinary !!!!",
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Color(0XFF353839),
                  letterSpacing: 2,
                ),
              ),
            ]),
      ],
    );
  }
}
class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            horizontalSpaceSuperMassive,
            Text(
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
            horizontalSpaceSuperMassive,
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
  const Project1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        horizontalSpaceSuperMassive,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image:
                  AssetImage("asset/image/project1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      horizontalSpaceSuperMega,
                      Text(
                        "Notely",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Afacad',
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          color: Color(0XFF000000),
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceLarge,
                  const Text(
                    '''
                                  Notely is a cross-platform mobile application
                                  built using the Flutter framework and integrated
                                  with Firebase for backend support. It offers a
                                  seamless and intuitive interface for creating
                                  and managing notes and to-do lists.                          
                                  ''',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF3C4A53),
                    ),
                  ),
                  verticalSpaceLarge,
                  Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: [
                      horizontalSpaceSuperMassive,
                      GestureDetector(
                        child: const Row(
                          children: [
                            Text(
                              "Code",
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: 22,
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
                              "https://github.com/tratum/Notely");
                        },
                      ),
                      const SizedBox(
                        width: 110,
                      ),
                      GestureDetector(
                        child: const Row(
                          children: [
                            Text(
                              "Demo",
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontSize: 22,
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
                ]),
          ],
        ),
      ],
    );
  }
}
class Project2 extends StatelessWidget {
  const Project2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        horizontalSpaceLarge,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 140),
              child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 360),
                      child: Text(
                        "Heading",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Afacad',
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF3C4A53),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Text(
                        '''
                                      This is a multiline text example in Flutter. You can use 
                                      triple single quotes or triple double quotes to create
                                      multiline strings in Dart. This allows you to write text
                                      across multiple lines without the need for explicit line
                                      breaks.
                                      ''',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Afacad',
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF3C4A53),
                        ),
                      ),
                    ),
                  ]),
            ),
            Container(
              height: 400,
              width: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image:
                  AssetImage("asset/image/deskSetup.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
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