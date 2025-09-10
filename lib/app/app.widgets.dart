import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/app.hover.extensions.dart';
import 'app.classes.dart';
import 'app.constants.dart';

final List<Map<String, String>> teckStackList = [
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

Widget techStackBuilder(
  Map<String, String> item,
  double iconSize,
  double iconContainer,
) {
  return GestureDetector(
    onTap: () async => WebNavigator.openUrl(url: item['url']!),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
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

Widget repoLayoutLeft(
  BuildContext context,
  String title,
  String description,
  String imgLink,
  bool showDemo,
  String repoLink,
) {
  // This Widget layouts the Project image to the left and the Project text to the right
  if (showDemo) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        hXtraMedium(context),
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
              context: context,
              imgPath: imgLink,
            );
          },
          child: Container(
            height: screenHeight(context) / 2,
            width: screenWidth(context) / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: const Offset(0, 3), // Offset position
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(imgLink),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        hLarge(context),
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  SelectableText(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'AfacadBlack',
                      fontSize: mFont(context),
                      //fontWeight: FontWeight.w100,
                      //letterSpacing: 1.2,
                      color: const Color(0XFF000000),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              vSmall(context),
              SelectableText(
                description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: sFont(context),
                  fontWeight: FontWeight.w700,
                  color: const Color(0XFF3C4A53),
                  overflow: TextOverflow.visible,
                ),
              ),
              vXtraMedium(context),
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
                      return WebNavigator.openUrl(url: repoLink);
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
                                fontSize: sPlusFont(context),
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            hXtraSmall(context),
                            FaIcon(
                              FontAwesomeIcons.github,
                              size: autoScale(context, 16, ScalingModes.diagonal),
                              color: Color(0xFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).scaleOnHover(scale: 1.2),
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
                            "https://drive.google.com/file/d/144agJN8F9uTBahio33sbb6eEoqbn3kJF/view?usp=sharing",
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
                                fontSize: sPlusFont(context),
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            hXtraSmall(context),
                            FaIcon(
                              FontAwesomeIcons.arrowUpRightFromSquare,
                              color: Color(0xFFFFFFFF),
                              size: autoScale(context, 16, ScalingModes.diagonal),
                            ),
                            // const Icon(
                            //   Icons.open_in_new,
                            //   size: 32,
                            //   color: Color(0xFFFFFFFF),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ).scaleOnHover(scale: 1.2),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
        hXtraMedium(context),
      ],
    );
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        hXtraMedium(context),
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
              context: context,
              imgPath: imgLink,
            );
          },
          child: Container(
            height: screenHeight(context) / 2,
            width: screenWidth(context) / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: const Offset(0, 3), // Offset position
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(imgLink),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        hLarge(context),
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  SelectableText(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'AfacadBlack',
                      fontSize: mFont(context),
                      // fontWeight: FontWeight.w100,
                      // letterSpacing: 1.2,
                      color: const Color(0XFF000000),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              vSmall(context),
              SelectableText(
                description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: sFont(context),
                  fontWeight: FontWeight.w700,
                  color: const Color(0XFF3C4A53),
                  overflow: TextOverflow.visible,
                ),
              ),
              vXtraMedium(context),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color(0XFF000000),
                    ),
                    fixedSize: WidgetStateProperty.all(
                      Size(
                        autoScale(context, 80, ScalingModes.diagonal),
                        autoScale(context, 30, ScalingModes.diagonal),
                      ),
                    ),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                  ),
                  onPressed: () async {
                    return WebNavigator.openUrl(url: repoLink);
                  },
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Code",
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: sPlusFont(context),
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        hXtraSmall(context),
                        FaIcon(
                          FontAwesomeIcons.github,
                          size: autoScale(context, 16, ScalingModes.diagonal),
                          color: Color(0xFFFFFFFF),
                        ),
                      ],
                    ),
                  ),
                ).scaleOnHover(scale: 1.2),
              ),
            ],
          ),
        ),
        hXtraMedium(context),
      ],
    );
  }
}

Widget repoLayoutRight(
  BuildContext context,
  String title,
  String description,
  String imgLink,
  bool showDemo,
  String repoLink,
) {
  // This Widget layouts the Project image to the right and the Project text to the left
  if (showDemo) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        hXtraMedium(context),
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  SelectableText(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'AfacadBlack',
                      fontSize: mFont(context),
                      // fontWeight: FontWeight.w100,
                      // letterSpacing: 1.2,
                      color: const Color(0XFF000000),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              vSmall(context),
              SelectableText(
                description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: sFont(context),
                  fontWeight: FontWeight.w700,
                  color: const Color(0XFF3C4A53),
                  overflow: TextOverflow.visible,
                ),
              ),
              vXtraMedium(context),
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
                      return WebNavigator.openUrl(url: repoLink);
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
                                fontSize: sPlusFont(context),
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            hXtraSmall(context),
                            FaIcon(
                              FontAwesomeIcons.github,
                              size: autoScale(context, 16, ScalingModes.diagonal),
                              color: Color(0xFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).scaleOnHover(scale: 1.2),
                  const Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        const Color(0XFF000000),
                      ),
                    ),
                    onPressed: () async {
                      return WebNavigator.openUrl(url: repoLink);
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
                                fontSize: sPlusFont(context),
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            hXtraSmall(context),
                            FaIcon(
                              FontAwesomeIcons.arrowUpRightFromSquare,
                              color: Color(0xFFFFFFFF),
                              size: autoScale(context, 16, ScalingModes.diagonal),
                            ),
                            // const Icon(
                            //   Icons.open_in_new,
                            //   size: 32,
                            //   color: Color(0xFFFFFFFF),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ).scaleOnHover(scale: 1.2),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
        hLarge(context),
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
              context: context,
              imgPath: imgLink,
            );
          },
          child: Container(
            height: screenHeight(context) / 2,
            width: screenWidth(context) / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: const Offset(0, 3), // Offset position
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(imgLink),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        hXtraMedium(context),
      ],
    );
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        hXtraMedium(context),
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  SelectableText(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'AfacadBlack',
                      fontSize: mFont(context),
                      // fontWeight: FontWeight.w100,
                      // letterSpacing: 1.2,
                      color: const Color(0XFF000000),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              vSmall(context),
              SelectableText(
                description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'Afacad',
                  fontSize: sFont(context),
                  fontWeight: FontWeight.w700,
                  color: const Color(0XFF3C4A53),
                  overflow: TextOverflow.visible,
                ),
              ),
              vXtraMedium(context),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color(0XFF000000),
                    ),
                    fixedSize: WidgetStateProperty.all(
                      Size(
                        autoScale(context, 80, ScalingModes.diagonal),
                        autoScale(context, 30, ScalingModes.diagonal),
                      ),
                    ),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                  ),
                  onPressed: () async {
                    return WebNavigator.openUrl(url: repoLink);
                  },
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Code",
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: sPlusFont(context),
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        hXtraSmall(context),
                        FaIcon(
                          FontAwesomeIcons.github,
                          size: autoScale(context, 16, ScalingModes.diagonal),
                          color: Color(0xFFFFFFFF),
                        ),
                      ],
                    ),
                  ),
                ).scaleOnHover(scale: 1.2),
              ),
            ],
          ),
        ),
        hLarge(context),
        GestureDetector(
          onTap: () async {
            return ImageView.showImageDialog(
              context: context,
              imgPath: imgLink,
            );
          },
          child: Container(
            height: screenHeight(context) / 2,
            width: screenWidth(context) / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: const Offset(0, 3), // Offset position
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(imgLink),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        hXtraMedium(context),
      ],
    );
  }
}

Widget navbar(BuildContext c, String text, GlobalKey k) {
  return ScaleOnHover(
    scale: 1.2,
    child: TextButton(
      onPressed: () => ContentScrolling.autoScroll(k),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        foregroundColor: const Color(0XFF000000),
        textStyle: TextStyle(
          fontFamily: 'Afacad',
          fontSize: sFont(c),
          fontWeight: FontWeight.w600,
          letterSpacing: 1.5,
        ),
      ),
      child: Text(text),
    ),
  );
}
