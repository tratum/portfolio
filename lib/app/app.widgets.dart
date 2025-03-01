import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/app.hover.extensions.dart';
import 'app.constants.dart';
import 'app.functions.dart';

final List<Map<String, String>> devTechStack = [
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/html.webp',
    'url': 'https://developer.mozilla.org/en-US/docs/Web/HTML',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/css.webp',
    'url': 'https://developer.mozilla.org/en-US/docs/Web/CSS',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/python.webp',
    'url': 'https://docs.python.org/3/',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/flutter.webp',
    'url': 'https://docs.flutter.dev/',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/java.webp',
    'url': 'https://docs.oracle.com/en/java/',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/rasa.webp',
    'color': '0XFF5a16ee',
    'url': 'https://rasa.com/docs/',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/mongodb.webp',
    'url': 'https://www.mongodb.com/docs/compass/current/',
  },
  {
    'icon': 'https://tratum.github.io/cloud-asset-storage/images/dart.webp',
    'url': 'https://dart.dev/guides',
  },
];

Widget techStackBuilder(Map<String, String> item, double iconSize, double iconContainer) {
  return GestureDetector(
    onTap: () async => WebNavigator.openUrl(url: item['url']!),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: iconContainer,
        height: iconContainer,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: Center(
          child: Image.network(
            item['icon']!,
            cacheHeight: iconSize.toInt(),
            cacheWidth: iconSize.toInt(),
            height: iconSize,
            width: iconSize,
          ),
        ),
      ),
    ),
  );
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

Widget desktopProject1(
    BuildContext context,
    Widget totalLeftSpacing,
    double imgHeight,
    double imgWidth,
    double projectHeadingFontSize,
    double projectSubTextFontSize) {
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
                    fontSize: projectHeadingFontSize,
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
                  fontSize: projectSubTextFontSize,
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
                              fontSize: projectSubTextFontSize + 2,
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
                              fontSize: projectSubTextFontSize + 2,
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

Widget desktopProject2(
    BuildContext context,
    Widget totalLeftSpacing,
    double imgHeight,
    double imgWidth,
    double projectHeadingFontSize,
    double projectSubTextFontSize) {
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
                    fontSize: projectHeadingFontSize,
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
                  fontSize: projectSubTextFontSize,
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
                              fontSize: projectSubTextFontSize + 2,
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

Widget desktopProject3(
    BuildContext context,
    Widget totalLeftSpacing,
    double imgHeight,
    double imgWidth,
    double projectHeadingFontSize,
    double projectSubTextFontSize) {
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
                    fontSize: projectHeadingFontSize,
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
                  fontSize: projectSubTextFontSize,
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
                              fontSize: projectSubTextFontSize + 2,
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
                              fontSize: projectSubTextFontSize + 2,
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

Widget desktopProject4(
    BuildContext context,
    Widget totalLeftSpacing,
    double imgHeight,
    double imgWidth,
    double projectHeadingFontSize,
    double projectSubTextFontSize) {
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
                    fontSize: projectHeadingFontSize,
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
                  fontSize: projectSubTextFontSize,
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
                              fontSize: projectSubTextFontSize + 2,
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
