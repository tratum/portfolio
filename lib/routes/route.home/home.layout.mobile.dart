import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/app.constants.dart';
import '../../app/app.functions.dart';
import '../../app/app.hover.extensions.dart';
import '../../app/app.widgets.dart';

class MobileHomeSection extends StatelessWidget {
  final Widget totalLeftPadding;
  final Widget iconLeftPadding;
  final double imgHeight;
  final double imgWidth;
  final double headerFontSize;

  const MobileHomeSection({
    super.key,
    this.totalLeftPadding = horizontalSpaceMedium,
    this.iconLeftPadding = horizontalSpaceMedium,
    this.imgWidth = 320,
    this.imgHeight = 300,
    this.headerFontSize = 42,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            totalLeftPadding,
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
            totalLeftPadding,
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
              width: 45,
              height: 45,
            ),
          ],
        ),
        verticalSpaceLarge,
        Row(
          children: [
            totalLeftPadding,
            Flexible(
              child: RichText(
                text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 23,
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
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: GestureDetector(
                              child: Image.network(
                                "https://tratum.github.io/cloud-asset-storage/images/pin.webp",
                                cacheWidth: 28,
                                cacheHeight: 28,
                                height: 25,
                                width: 25,
                              ),
                              onTap: () async {
                                return WebNavigator.openUrl(
                                  url:
                                      'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
                                );
                                // return _urlRedirect(url);
                              }),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
        verticalSpaceLarge,
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
                return WebNavigator.openUrl(url: "https://github.com/tratum");
              },
            )
          ],
        ),
        verticalSpaceLargePlus,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Text(
                        "Let's Connect",
                        style: TextStyle(
                          fontFamily: 'Afacad',
                          fontSize: headerFontSize - 22,
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
            const Spacer(),
          ],
        ),
      ],
    );
  }
}

class MobileTechStackSection extends StatelessWidget {
  final Widget totalLeftSpacing;

  const MobileTechStackSection({
    super.key,
    this.totalLeftSpacing = horizontalSpaceMedium,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpaceMedium,
        const SelectableText("Tech Stack",
            style: TextStyle(
              fontFamily: 'Afacad',
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Color(0XFF1B1B1B),
            )),
        verticalSpaceMedium,
        Wrap(
          spacing: 22.5,
          runSpacing: 26,
          alignment: WrapAlignment.start,
          children: devTechStack.map((item) => techStackBuilder(item)).toList(),
        ),
      ],
    );
  }
}

class MobileAboutMeSection extends StatelessWidget {
  const MobileAboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 160),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SelectableText(
                "About Me :",
                style: TextStyle(
                  fontFamily: 'RussoOne',
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.2,
                  color: Color(0XFF000000),
                ),
              ),
              verticalSpaceMedium,
              GestureDetector(
                onTap: () async {
                  return ImageView.showImageDialog(
                      context: context,
                      imgPath:
                          "https://tratum.github.io/cloud-asset-storage/images/deskSetup.webp");
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://tratum.github.io/cloud-asset-storage/images/deskSetup.webp"),
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
              const SelectableText(
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

class MobileProjectSection extends StatelessWidget {
  const MobileProjectSection({super.key});

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
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    "Portfolio: ",
                    style: TextStyle(
                      fontFamily: 'RussoOne',
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2,
                      color: Color(0XFF000000),
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
                              "https://tratum.github.io/cloud-asset-storage/images/glowingStar.webp",
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
              Column(
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: SelectableText(
                      "Notely",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'RussoOne',
                        fontSize: 24,
                        fontWeight: FontWeight.w100,
                        color: Color(0XFF000000),
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () async {
                      return ImageView.showImageDialog(
                          context: context,
                          imgPath:
                              "https://tratum.github.io/cloud-asset-storage/images/project1.webp");
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://tratum.github.io/cloud-asset-storage/images/project1.webp"),
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
                              child: SelectableText(
                                "Notely is a cross-platform mobile application built using the Flutter framework and integrated with Firebase for backend support. It offers a seamless and intuitive interface for creating and managing notes and to-do lists.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: 'Afacad',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0XFF3C4A53),
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Spacer(),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                const Color(0XFF000000))),
                                    onPressed: () async {
                                      return WebNavigator.openUrl(
                                          url:
                                              "https://github.com/tratum/Notely");
                                    },
                                    child: const Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Code",
                                              style: TextStyle(
                                                fontFamily: 'Afacad',
                                                fontSize: 22,
                                                fontWeight: FontWeight.w900,
                                                color: Color(0xFFFFFFFF),
                                              ),
                                            ),
                                            horizontalSpaceSmallPlus,
                                            FaIcon(
                                              FontAwesomeIcons.github,
                                              size: 26,
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
                                            WidgetStateProperty.all(
                                                const Color(0XFF000000))),
                                    onPressed: () async {
                                      return WebNavigator.openUrl(
                                          url:
                                              "https://drive.google.com/file/d/144agJN8F9uTBahio33sbb6eEoqbn3kJF/view?usp=sharing");
                                    },
                                    child: const Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Demo",
                                              style: TextStyle(
                                                fontFamily: 'Afacad',
                                                fontSize: 22,
                                                fontWeight: FontWeight.w900,
                                                color: Color(0xFFFFFFFF),
                                              ),
                                            ),
                                            horizontalSpaceSmallPlus,
                                            Icon(
                                              Icons.open_in_new,
                                              size: 26,
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
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: SelectableText(
                          "Smart Apple Ripeness Detection System",
                          style: TextStyle(
                            fontFamily: 'RussoOne',
                            fontSize: 24,
                            fontWeight: FontWeight.w100,
                            color: Color(0XFF000000),
                            letterSpacing: 1.2,
                          ),
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
                          context: context,
                          imgPath:
                              "https://tratum.github.io/cloud-asset-storage/images/project2.webp");
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://tratum.github.io/cloud-asset-storage/images/project2.webp"),
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
                              child: SelectableText(
                                "Apple Maturity Detection System leverages YOLOv8 and CNNs to automate ripeness assessment of an Apple. It employs a comprehensive dataset from Kaggle and the web, enhancing accuracy in real-world applications like sorting machines and consumer apps.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: 'Afacad',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0XFF3C4A53),
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
                                      backgroundColor: WidgetStateProperty.all(
                                          const Color(0XFF000000))),
                                  onPressed: () async {
                                    return WebNavigator.openUrl(
                                        url:
                                            "https://github.com/tratum/apple_maturity_detection");
                                  },
                                  child: const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Code",
                                            style: TextStyle(
                                              fontFamily: 'Afacad',
                                              fontSize: 22,
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                          horizontalSpaceSmallPlus,
                                          FaIcon(
                                            FontAwesomeIcons.github,
                                            size: 26,
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
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: SelectableText(
                      "Wanderlust Expeditions",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'RussoOne',
                        fontSize: 24,
                        fontWeight: FontWeight.w100,
                        color: Color(0XFF000000),
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () async {
                      return ImageView.showImageDialog(
                          context: context,
                          imgPath:
                              "https://tratum.github.io/cloud-asset-storage/images/project3.webp");
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://tratum.github.io/cloud-asset-storage/images/project3.webp"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: SelectableText(
                          "WanderLust Expeditions is a Travel Recommendation Website that beckons adventure seekers to explore the diverse tapestry of Bharat's destinations. Powered by Flutter for seamless cross-platform experience, it leverages GitHub Pages for backend management, employing web scraping and JSON for curated travel insights.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF3C4A53),
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
                              backgroundColor: WidgetStateProperty.all(
                                const Color(0XFF000000),
                              ),
                            ),
                            onPressed: () async {
                              return WebNavigator.openUrl(
                                  url:
                                      "https://github.com/tratum/wanderlust-expeditions");
                            },
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Code",
                                      style: TextStyle(
                                        fontFamily: 'Afacad',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                    horizontalSpaceSmallPlus,
                                    FaIcon(
                                      FontAwesomeIcons.github,
                                      size: 26,
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
                                backgroundColor: WidgetStateProperty.all(
                                    const Color(0XFF000000))),
                            onPressed: () async {
                              return WebNavigator.openUrl(
                                url:
                                    "https://tratum.github.io/wanderlust-expeditions/",
                              );
                            },
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Demo",
                                      style: TextStyle(
                                        fontFamily: 'Afacad',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                    horizontalSpaceSmallPlus,
                                    Icon(
                                      Icons.open_in_new,
                                      size: 26,
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
                  const SizedBox(
                    height: 90,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: SelectableText(
                          "ClimaTrend",
                          style: TextStyle(
                            fontFamily: 'RussoOne',
                            fontSize: 24,
                            fontWeight: FontWeight.w100,
                            letterSpacing: 1.2,
                            color: Color(0XFF000000),
                          ),
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
                          context: context,
                          imgPath:
                              "https://tratum.github.io/cloud-asset-storage/images/project4.webp");
                    },
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://tratum.github.io/cloud-asset-storage/images/project4.webp"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: SelectableText(
                      "Forecasting average temperatures in major Indian cities with Weather Prediction using ARIMA Model. Leveraging time series analysis and machine learning, the project utilizes Python, Pandas, and StatsModels for data manipulation, ARIMA modeling, and evaluation. Hardware and software requirements ensure seamless execution.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF3C4A53),
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
                            backgroundColor: WidgetStateProperty.all(
                                const Color(0XFF000000))),
                        onPressed: () async {
                          return WebNavigator.openUrl(
                              url:
                                  "https://github.com/tratum/weather_prediction");
                        },
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Text(
                                  "Code",
                                  style: TextStyle(
                                    fontFamily: 'Afacad',
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                horizontalSpaceSmallPlus,
                                FaIcon(
                                  FontAwesomeIcons.github,
                                  size: 26,
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
                  const SizedBox(
                    height: 90,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MobileResume extends StatelessWidget {
  final Widget totalLeftSpacing;
  final double pdfViewHeight;
  final double pdfViewWidth;

  const MobileResume({
    super.key,
    this.totalLeftSpacing = horizontalSpaceSuperMassive,
    this.pdfViewHeight = 800,
    this.pdfViewWidth = 800,
  });

  @override
  Widget build(BuildContext context) {
    final pdfView = HtmlElementView(
      key: UniqueKey(),
      viewType: 'pdf-iframe-view-mobile',
    );
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            totalLeftSpacing,
            const SelectableText(
              "Resume",
              style: TextStyle(
                fontFamily: 'RussoOne',
                fontSize: 32,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2,
                color: Color(0XFF000000),
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

class MobileContactSection extends StatelessWidget {
  const MobileContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SelectableText(
          "Let's build together",
          style: TextStyle(
            fontFamily: 'RussoOne',
            fontSize: 32,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.2,
            color: Color(0XFF000000),
          ),
        ),
        verticalSpaceSmall,
        const Flexible(
          child: SelectableText(
            "I'm always open to new projects and opportunities.",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Afacad',
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: Color(0XFF121212),
              overflow: TextOverflow.visible,
            ),
          ),
        ),
        verticalSpaceSmall,
        Flexible(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(
                child: SelectableText(
                  "Drop a Hello, Let's Collaborate and Grow!",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Color(0XFF121212),
                  ),
                ),
              ),
              horizontalSpaceTiny,
              Image.network(
                "https://tratum.github.io/cloud-asset-storage/images/pointingDown.webp",
                cacheWidth: 28,
                cacheHeight: 28,
                height: 30,
                width: 30,
              ),
            ],
          ),
        ),
        verticalSpaceLarge,
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(const Color(0XFF000000)),
          ),
          onPressed: () {
            WebNavigator.launchEmail("tratum.connect@gmail.com");
          },
          child: const FittedBox(
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
                    horizontalSpaceSmallPlus,
                    Text(
                      "tratum.connect@gmail.com",
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFDE3163),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ).scaleOnHover(scale: 12),
        verticalSpaceLarge,
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(const Color(0XFF000000)),
          ),
          onPressed: () async {
            return WebNavigator.openUrl(
              url: 'https://maps.app.goo.gl/XYfaosAzrCmg8rmG8',
            );
          },
          child: const FittedBox(
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
                    horizontalSpaceSmallPlus,
                    Text(
                      "Jaipur, Rajasthan, India",
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFD0F0C0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ).scaleOnHover(scale: 12),
        verticalSpaceLargePlus,
      ],
    );
  }
}

class MobileFooterSection extends StatelessWidget {
  const MobileFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF000000),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          verticalSpaceMediumPlus,
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 18),
                child: Center(
                  child: SelectableText(
                    "© 2024 Saksham Rawat",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontFamily: 'Afacad',
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              horizontalSpaceMedium,
              GestureDetector(
                child: const FaIcon(
                  FontAwesomeIcons.github,
                  color: Color(0XFFFFFFFF),
                  size: 28,
                ),
                onTap: () async {
                  return WebNavigator.openUrl(url: "https://github.com/tratum");
                },
              ),
              horizontalSpaceMedium,
              GestureDetector(
                child: const FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Color(0XFFFFFFFF),
                  size: 28,
                ),
                onTap: () async {
                  return WebNavigator.openUrl(
                    url: "https://www.linkedin.com/in/saksham-rawat-dev",
                  );
                },
              ),
              const Spacer(),
            ],
          ),
          verticalSpaceMediumPlus,
          // verticalSpaceSemiMedium,
          // Row(
          //   children: [
          //     const Spacer(),
          //     GestureDetector(
          //       child: const FaIcon(
          //         FontAwesomeIcons.github,
          //         color: Color(0XFFFFFFFF),
          //         size: 36,
          //       ),
          //       onTap: () async {
          //         return WebNavigator.openUrl(url: "https://github.com/tratum");
          //       },
          //     ),
          //     horizontalSpaceSemiLarge,
          //     GestureDetector(
          //       child: const FaIcon(
          //         FontAwesomeIcons.linkedin,
          //         color: Color(0XFFFFFFFF),
          //         size: 36,
          //       ),
          //       onTap: () async {
          //         return WebNavigator.openUrl(
          //           url: "https://www.linkedin.com/in/saksham-rawat-dev",
          //         );
          //       },
          //     ),
          //     const Spacer(),
          //   ],
          // ),
          // verticalSpaceSemiMedium,
        ],
      ),
    );
  }
}
