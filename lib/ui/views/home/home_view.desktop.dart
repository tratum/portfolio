import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:tratum_portfolio/ui/animation/bouncy_image_animation.dart';
import 'package:tratum_portfolio/ui/animation/scale_animation_image.dart';
import 'package:tratum_portfolio/ui/animation/scale_animation_svg.dart';
import 'package:tratum_portfolio/ui/common/ui_helpers.dart';
import 'package:tratum_portfolio/ui/widgets/mouse_transforms/scale_on_hover.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  HomeViewDesktop({super.key});

  final ScrollController _scrollController = ScrollController();

  Future<void> _urlRedirect(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw Exception('could not launch $uri');
    }
  }

  void autoScroll(double scrollPosition) {
    _scrollController.animateTo(
      scrollPosition,
      duration: const Duration(milliseconds: 850),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 22, 24, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    Row(
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
                                // const SizedBox(
                                //   width: 25,
                                // ),
                                // Image.asset(
                                //   'asset/image/namaste.png',
                                //   semanticLabel: "Namaste From My Side",
                                //   fit: BoxFit.fill,
                                //   width: 110,
                                //   height: 85,
                                // ),
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
                                    const url =
                                        'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8';
                                    return _urlRedirect(url);
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
                                    const url =
                                        "https://www.linkedin.com/in/saksham-rawat-dev";
                                    _urlRedirect(url);
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
                                    const url = "https://github.com/tratum";
                                    _urlRedirect(url);
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
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Row(
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
                            const url =
                                "https://developer.mozilla.org/en-US/docs/Web/HTML";
                            _urlRedirect(url);
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
                            const url =
                                "https://developer.mozilla.org/en-US/docs/Web/CSS";
                            _urlRedirect(url);
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
                            const url = "https://docs.python.org/3/";
                            _urlRedirect(url);
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
                            const url = "https://docs.flutter.dev/";
                            _urlRedirect(url);
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
                            const url = "https://docs.oracle.com/en/java/";
                            _urlRedirect(url);
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
                            const url = "https://rasa.com/docs/";
                            _urlRedirect(url);
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
                            const url =
                                "https://www.mongodb.com/docs/compass/current/";
                            _urlRedirect(url);
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
                            const url = "https://dart.dev/guides";
                            _urlRedirect(url);
                          },
                        ),
                        // Image.asset(
                        //   "asset/image/scrollDown.png",
                        //   height: 120,
                        //   width: 120,
                        // )
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     const Spacer(),
                    //     GestureDetector(
                    //       child: const BouncyImageAnimation(
                    //         imgPath: "asset/image/scrollDown.png",
                    //         height: 120,
                    //         width: 120,
                    //       ),
                    //       onTap: (){
                    //         autoScroll(300);
                    //       },
                    //     ),
                    //   ]
                    // ),
                    verticalSpaceSuperMassive,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        horizontalSpaceMassive,
                        Container(
                          height: 550,
                          width: 700,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage("asset/image/deskSetup.png"),
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
                    ),
                    verticalSpaceSuperMassive,
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
                    const SizedBox(height: 90,),
                    Row(
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
                                  image: AssetImage("asset/image/project1.png"),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                      onTap: (){
                                        _urlRedirect("https://github.com/tratum/Notely");
                                      },
                                    ),
                                    const SizedBox(width: 110,),
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
                                      onTap: (){
                                        _urlRedirect("https://drive.google.com/file/d/144agJN8F9uTBahio33sbb6eEoqbn3kJF/view?usp=sharing");
                                      },
                                    ),
                                  ],
                                ),
                              ]
                            ),
                          ],
                        ),
                      ],
                    ),
                    verticalSpaceMassive,
                    Row(
                      children: [
                        horizontalSpaceLarge,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 140),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 360),
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
                                  ]
                              ),
                            ),
                            Container(
                              height: 400,
                              width: 550,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  image: AssetImage("asset/image/deskSetup.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    verticalSpaceSuperMassive,
                    Row(
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
                    ),
                  ],
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
                        autoScroll(0);
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
                        autoScroll(710);
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
                        autoScroll(1500);
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
      // floatingActionButton: Visibility(
      //   visible: _scrollController.offset <= 0,
      //   child: FloatingActionButton(
      //     elevation: 0,
      //     backgroundColor: const Color(0XFFfafafa),
      //     onPressed: () {},
      //     child: const FaIcon(
      //       FontAwesomeIcons.chevronDown,
      //       size: 38,
      //       color: Color(0XFF6A8292),
      //     ),
      //   ),
      // ),
    );
  }
//
// import 'package:google_fonts/google_fonts.dart';
// import 'package:tratum_portfolio/ui/common/app_colors.dart';
// import 'package:tratum_portfolio/ui/common/app_constants.dart';
// import 'package:tratum_portfolio/ui/common/ui_helpers.dart';
// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';
// import 'package:tratum_portfolio/ui/widgets/mouse_transforms/scale_on_hover.dart';
//
// import 'home_viewmodel.dart';
//
// class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
// const HomeViewDesktop({super.key});
//
// @override
// Widget build(BuildContext context, HomeViewModel viewModel) {
// return Scaffold(
// // appBar: AppBar(
// //   backgroundColor: Color(0XFFfafafa),
// //   foregroundColor: Colors.black,
// //   title: Row(
// //     mainAxisSize: MainAxisSize.max,
// //     children: [
// //       Text(
// //         'tratum.dev',
// //         style: TextStyle(
// //           fontFamily: 'Yatra',
// //           fontSize: 28,
// //           fontWeight: FontWeight.w600,
// //           letterSpacing: 1.5,
// //         ),
// //       ),
// //       Spacer(),
// //       ScaleOnHover(
// //         scale: 3,
// //         child: Text(
// //           'Home',
// //           style: TextStyle(
// //             fontFamily: 'Afacad',
// //             fontSize: 28,
// //             fontWeight: FontWeight.w600,
// //             letterSpacing: 1.5,
// //           ),
// //         ),
// //       ),
// //       SizedBox(
// //         width: 30,
// //       ),
// //       ScaleOnHover(
// //         scale: 3,
// //         child: Text(
// //           'About',
// //           style: TextStyle(
// //             fontFamily: 'Afacad',
// //             fontSize: 28,
// //             fontWeight: FontWeight.w600,
// //             letterSpacing: 1.5,
// //           ),
// //         ),
// //       ),
// //       SizedBox(
// //         width: 30,
// //       ),
// //       ScaleOnHover(
// //         scale: 3,
// //         child: Text(
// //           'Projects',
// //           style: TextStyle(
// //             fontFamily: 'Afacad',
// //             fontSize: 28,
// //             fontWeight: FontWeight.w600,
// //             letterSpacing: 1.5,
// //           ),
// //         ),
// //       ),
// //       // Column(
// //       //   mainAxisSize: MainAxisSize.max,
// //       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //       //   children: [
// //       //     verticalSpaceLarge,
// //       //     Column(
// //       //       children: [
// //       //         const Text(
// //       //           'Hello, DESKTOP UI!',
// //       //           style: TextStyle(
// //       //             fontSize: 35,
// //       //             fontWeight: FontWeight.w900,
// //       //           ),
// //       //         ),
// //       //         verticalSpaceMedium,
// //       //         MaterialButton(
// //       //           color: Colors.black,
// //       //           onPressed: viewModel.incrementCounter,
// //       //           child: Text(
// //       //             viewModel.counterLabel,
// //       //             style: const TextStyle(color: Colors.white),
// //       //           ),
// //       //         ),
// //       //       ],
// //       //     ),
// //       //     Row(
// //       //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //       //       children: [
// //       //         MaterialButton(
// //       //           color: kcDarkGreyColor,
// //       //           onPressed: viewModel.showDialog,
// //       //           child: const Text(
// //       //             'Show Dialog',
// //       //             style: TextStyle(
// //       //               color: Colors.white,
// //       //             ),
// //       //           ),
// //       //         ),
// //       //         MaterialButton(
// //       //           color: kcDarkGreyColor,
// //       //           onPressed: viewModel.showBottomSheet,
// //       //           child: const Text(
// //       //             'Show Bottom Sheet',
// //       //             style: TextStyle(
// //       //               color: Colors.white,
// //       //             ),
// //       //           ),
// //       //         ),
// //       //       ],
// //       //     )
// //       //   ],
// //       // ),
// //     ],
// //   ),
// //   shadowColor: Colors.transparent,
// // ),
// body: SafeArea(
// child: SingleChildScrollView(
// child: Padding(
// padding: const EdgeInsets.fromLTRB(24, 22, 24, 22),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Row(
// mainAxisSize: MainAxisSize.max,
// children: [
// const Text(
// 'tratum.dev',
// style: TextStyle(
// fontFamily: 'Yatra',
// fontSize: 28,
// fontWeight: FontWeight.w500,
// letterSpacing: 1.5,
// ),
// ),
// const Spacer(),
// GestureDetector(
// child: ScaleOnHover(
// scale: 4,
// child: Text(
// 'Home',
// style: TextStyle(
// fontFamily: 'Afacad',
// fontSize: 28,
// fontWeight: FontWeight.w600,
// letterSpacing: 1.5,
// ),
// ),
// ),
// ),
// const SizedBox(
// width: 30,
// ),
// GestureDetector(
// child: ScaleOnHover(
// scale: 4,
// child: Text(
// 'About',
// style: TextStyle(
// fontFamily: 'Afacad',
// fontSize: 28,
// fontWeight: FontWeight.w600,
// letterSpacing: 1.5,
// ),
// ),
// ),
// ),
// const SizedBox(
// width: 30,
// ),
// GestureDetector(
// child: ScaleOnHover(
// scale: 4,
// child: Text(
// 'Projects',
// style: TextStyle(
// fontFamily: 'Afacad',
// fontSize: 28,
// fontWeight: FontWeight.w600,
// letterSpacing: 1.5,
// ),
// ),
// ),
// ),
// // Column(
// //   mainAxisSize: MainAxisSize.max,
// //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //   children: [
// //     verticalSpaceLarge,
// //     Column(
// //       children: [
// //         const Text(
// //           'Hello, DESKTOP UI!',
// //           style: TextStyle(
// //             fontSize: 35,
// //             fontWeight: FontWeight.w900,
// //           ),
// //         ),
// //         verticalSpaceMedium,
// //         MaterialButton(
// //           color: Colors.black,
// //           onPressed: viewModel.incrementCounter,
// //           child: Text(
// //             viewModel.counterLabel,
// //             style: const TextStyle(color: Colors.white),
// //           ),
// //         ),
// //       ],
// //     ),
// //     Row(
// //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //       children: [
// //         MaterialButton(
// //           color: kcDarkGreyColor,
// //           onPressed: viewModel.showDialog,
// //           child: const Text(
// //             'Show Dialog',
// //             style: TextStyle(
// //               color: Colors.white,
// //             ),
// //           ),
// //         ),
// //         MaterialButton(
// //           color: kcDarkGreyColor,
// //           onPressed: viewModel.showBottomSheet,
// //           child: const Text(
// //             'Show Bottom Sheet',
// //             style: TextStyle(
// //               color: Colors.white,
// //             ),
// //           ),
// //         ),
// //       ],
// //     )
// //   ],
// // ),
// ],
// ),
// const SizedBox(height: 70,),
// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Container(
// color: Colors.black.withOpacity(0.04),
// height: 500,
// width: MediaQuery.of(context).size.width/2.1,
// ),
// Container(
// color: Colors.black.withOpacity(0.04),
// height: 500,
// width: MediaQuery.of(context).size.width/2.1,
// ),
// ],
// ),
// const SizedBox(height: 70,),
// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Container(
// color: Colors.black.withOpacity(0.04),
// height: 500,
// width: MediaQuery.of(context).size.width/2.1,
// ),
// Container(
// color: Colors.black.withOpacity(0.04),
// height: 500,
// width: MediaQuery.of(context).size.width/2.1,
// ),
// ],
// ),
// ],
// ),
// ),
// ),
// ),
// // body: NestedScrollView(
// //   headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled){
// //     return[
// //     SliverAppBar(
// //         pinned: true, // Set to true to make the app bar always stay on top
// //         expandedHeight: 80,
// //         flexibleSpace: FlexibleSpaceBar(
// //         title: Row(
// //                 mainAxisSize: MainAxisSize.max,
// //                 children: [
// //                   Text(
// //                     'tratum.dev',
// //                     style: TextStyle(
// //                       fontFamily: 'Yatra',
// //                       fontSize: 28,
// //                       fontWeight: FontWeight.w600,
// //                       letterSpacing: 1.5,
// //                     ),
// //                   ),
// //                   Spacer(),
// //                   ScaleOnHover(
// //                     scale: 3,
// //                     child: Text(
// //                       'Home',
// //                       style: TextStyle(
// //                         fontFamily: 'Afacad',
// //                         fontSize: 28,
// //                         fontWeight: FontWeight.w600,
// //                         letterSpacing: 1.5,
// //                       ),
// //                     ),
// //                   ),
// //                   SizedBox(
// //                     width: 30,
// //                   ),
// //                   ScaleOnHover(
// //                     scale: 3,
// //                     child: Text(
// //                       'About',
// //                       style: TextStyle(
// //                         fontFamily: 'Afacad',
// //                         fontSize: 28,
// //                         fontWeight: FontWeight.w600,
// //                         letterSpacing: 1.5,
// //                       ),
// //                     ),
// //                   ),
// //                   SizedBox(
// //                     width: 30,
// //                   ),
// //                   ScaleOnHover(
// //                     scale: 3,
// //                     child: Text(
// //                       'Projects',
// //                       style: TextStyle(
// //                         fontFamily: 'Afacad',
// //                         fontSize: 28,
// //                         fontWeight: FontWeight.w600,
// //                         letterSpacing: 1.5,
// //                       ),
// //                     ),
// //                   ),
// //         ]
// //         )
// //         ),
// //       )
// //     ];
// //   },
// //   body: Padding(
// // padding: const EdgeInsets.fromLTRB(22, 22, 22, 22),
// // child: Column(
// //   crossAxisAlignment: CrossAxisAlignment.start,
// //   children: [
// //     const SizedBox(height: 100,),
// //     Container(
// //       color: Colors.black.withOpacity(0.04),
// //       height: 500,
// //       width: MediaQuery.of(context).size.width/2,
// //     )
// //   ],
// // ),
// // ),
// // ),
// );
// }
// }
}
