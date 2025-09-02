import 'dart:math';

import 'package:flutter/material.dart';

enum ScalingModes { width, height, diagonal }

double autoScale(BuildContext ctx, double baseValue, ScalingModes mode) {
  switch (mode) {
    case ScalingModes.diagonal:
      // We are using Diagonal/Density Independent Scaling Method. It Balances width and height scaling
      num scale =
          sqrt(pow(screenWidth(ctx), 2) + pow(screenHeight(ctx), 2)) /
          sqrt(pow(_baseScreenWidth, 2) + pow(_baseScreenHeight, 2));
      return baseValue * scale.toDouble();
    case ScalingModes.width:
      // Width Scaling Method is good for horizontal layouts
      num scale = screenWidth(ctx) / _baseScreenWidth;
      return baseValue * pow(scale.toDouble(), 1.1);
    case ScalingModes.height:
      // Height Scaling Method is good for vertical layouts
      num scale = screenHeight(ctx) / _baseScreenHeight;
      return baseValue * pow(scale.toDouble(), 1.1);
  }
}

/// --------------- Portfolio Projects --------------------------
enum repos {
  Notely(
    "Notely",
    "Notely is a cross-platform mobile application built using the Flutter framework and integrated with Firebase for backend support. It offers a seamless and intuitive interface for creating and managing notes and to-do lists.",
    "https://tratum.github.io/cloud-asset-storage/images/project1.webp",
    "https://github.com/tratum/Notely",
  ),
  AppleVision(
    // Apple Ripeness Detection System
    "Apple Vision",
    "Apple Vision System leverages YOLOv8 and CNNs to automate ripeness assessment of an Apple. It employs a comprehensive dataset from Kaggle and the web, enhancing accuracy in real-world applications like sorting machines and consumer apps.",
    "https://tratum.github.io/cloud-asset-storage/images/project2.webp",
    "https://github.com/tratum/Apple-Vision",
  ),
  WanderLustExpedition(
    "Wanderlust Expeditions",
    "WanderLust Expeditions is a Travel Recommendation Website that beckons adventure seekers to explore the diverse tapestry of Bharat's destinations. Powered by Flutter for seamless cross-platform experience, it leverages GitHub Pages for backend management, employing web scraping and JSON for curated travel insights.",
    "https://tratum.github.io/cloud-asset-storage/images/project3.webp",
    "https://github.com/tratum/wanderlust-expeditions",
    // Demo Site https://tratum.github.io/wanderlust-expeditions/
  ),
  ClimaTrend(
    "ClimaTrend",
    "ARIMA-Based Weather Forecasting of average temperatures in major Indian cities with Weather Prediction using ARIMA Model. Leveraging time series analysis and machine learning, the project utilizes Python, Pandas, and StatsModels for data manipulation, ARIMA modeling, and evaluation. Hardware and software requirements ensure seamless execution.",
    "https://tratum.github.io/cloud-asset-storage/images/project4.webp",
    "https://github.com/tratum/weather_prediction",
  );

  final String title;
  final String description;
  final String imgLink;
  final String repoLink;

  const repos(this.title, this.description, this.imgLink, this.repoLink);
}

/// --------------- Tech Stack --------------------------
enum skills {
  HTML(
    "https://tratum.github.io/cloud-asset-storage/images/html.webp",
    "https://developer.mozilla.org/en-US/docs/Web/HTML",
  ),
  CSS(
    "https://tratum.github.io/cloud-asset-storage/images/css.webp",
    'https://developer.mozilla.org/en-US/docs/Web/CSS',
  ),
  Python(
    "https://tratum.github.io/cloud-asset-storage/images/python.webp",
    "https://docs.python.org/3/",
  ),
  Flutter(
    "https://tratum.github.io/cloud-asset-storage/images/flutter.webp",
    "https://docs.flutter.dev/",
  ),
  Java(
    "https://tratum.github.io/cloud-asset-storage/images/java.webp",
    "https://docs.oracle.com/en/java/",
  ),
  MongoDB(
    "https://tratum.github.io/cloud-asset-storage/images/mongodb.webp",
    "https://www.mongodb.com/docs/compass/current/",
  ),
  Dart(
    "https://tratum.github.io/cloud-asset-storage/images/dart.webp",
    "https://dart.dev/guides",
  );

  final String icon;
  final String url;

  const skills(this.icon, this.url);

  static List<Image> toImageList({
    required double width,
    required double height,
  }) {
    return values
        .map(
          (s) => Image.network(
            s.icon,
            width: width,
            height: height,
            fit: BoxFit.contain,
            semanticLabel: s.name,
          ),
        )
        .toList();
  }
}

/// ------------------- Responsive WhiteSpace -------------------
const double _baseScreenWidth = 375.0;
const double _baseScreenHeight = 782.0;

enum whitespace {
  tiny(5.0),
  xs(10.0),
  s(15.0),
  m(25.0),
  xm(30.0),
  l(50.0),
  xl(80.0),
  xxl(100.0),
  massive(120.0),
  superMassive(200.0),
  mega(250.0),
  ultraMega(320.0);

  final double size;

  const whitespace(this.size);

  static double responsiveSpace(BuildContext c, whitespace s) =>
      autoScale(c, s.size, ScalingModes.diagonal);
}

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

Widget hSpace(double width) => SizedBox(width: width);

Widget vSpace(double height) => SizedBox(height: height);

autoHSpace(BuildContext ctx, double w) =>
    SizedBox(width: autoScale(ctx, w, ScalingModes.diagonal));

autoVSpace(BuildContext ctx, double w) =>
    SizedBox(height: autoScale(ctx, w, ScalingModes.diagonal));

hTiny(BuildContext c) => autoHSpace(c, whitespace.tiny.size);
hXtraSmall(BuildContext c) => autoHSpace(c, whitespace.xs.size);
hSmall(BuildContext c) => autoHSpace(c, whitespace.s.size);
hMedium(BuildContext c) => autoHSpace(c, whitespace.m.size);
hXtraMedium(BuildContext c) => autoHSpace(c, whitespace.xm.size);
hLarge(BuildContext c) => autoHSpace(c, whitespace.l.size);
hXtralarge(BuildContext c) => autoHSpace(c, whitespace.xl.size);
hXXLarge(BuildContext c) => autoHSpace(c, whitespace.xxl.size);
hMassive(BuildContext c) => autoHSpace(c, whitespace.massive.size);
hSuperMassive(BuildContext c) => autoHSpace(c, whitespace.superMassive.size);
hMega(BuildContext c) => autoHSpace(c, whitespace.mega.size);
hUltraMega(BuildContext c) => autoHSpace(c, whitespace.ultraMega.size);

vTiny(BuildContext c) => autoVSpace(c, whitespace.tiny.size);
vXtraSmall(BuildContext c) => autoVSpace(c, whitespace.xs.size);
vSmall(BuildContext c) => autoVSpace(c, whitespace.s.size);
vMedium(BuildContext c) => autoVSpace(c, whitespace.m.size);
vXtraMedium(BuildContext c) => autoVSpace(c, whitespace.xm.size);
vLarge(BuildContext c) => autoVSpace(c, whitespace.l.size);
vXtraLarge(BuildContext c) => autoVSpace(c, whitespace.xl.size);
vXXLarge(BuildContext c) => autoVSpace(c, whitespace.xxl.size);
vMassive(BuildContext c) => autoVSpace(c, whitespace.massive.size);
vSuperMassive(BuildContext c) => autoVSpace(c, whitespace.superMassive.size);
vMega(BuildContext c) => autoVSpace(c, whitespace.mega.size);
vUltraMega(BuildContext c) => autoVSpace(c, whitespace.ultraMega.size);

/// ------------------- Font Styles -------------------
TextStyle sectionHeading(BuildContext c) => TextStyle(
  fontFamily: 'AfacadBlack',
  fontSize: lFont(c),
  letterSpacing: 1.5,
  color: const Color(0XFF000000),
);
TextStyle sectionSubHeadings(BuildContext c) => TextStyle(
  fontFamily: 'AfacadBold',
  fontSize: mFont(c),
  color: const Color(0XFF000000),
);
TextStyle smallTextStyle(BuildContext c) => TextStyle(
  fontFamily: 'Afacad',
  fontSize: sFont(c),
  fontWeight: FontWeight.w700,
  color: const Color(0XFF3C4A53),
  overflow: TextOverflow.visible,
);
TextStyle xtraSmallTextStyle(BuildContext c) => TextStyle(
  fontFamily: 'Afacad',
  fontSize: xsFont(c),
  fontWeight: FontWeight.w700,
  color: const Color(0XFF3C4A53),
  overflow: TextOverflow.visible,
);

/// ------------------- Responsive fonts -------------------
enum font {
  xs(8),
  s(14.0),
  sPlus(16.0),
  m(18.0),
  l(24.0),
  xl(28.0),
  xxl(32.0);

  final double size;

  const font(this.size);
}

double xsFont(BuildContext c) =>
    autoScale(c, font.xs.size, ScalingModes.diagonal);

double sFont(BuildContext c) =>
    autoScale(c, font.s.size, ScalingModes.diagonal);

double sPlusFont(BuildContext c) =>
    autoScale(c, font.sPlus.size, ScalingModes.diagonal);

double mFont(BuildContext c) =>
    autoScale(c, font.m.size, ScalingModes.diagonal);

double lFont(BuildContext c) =>
    autoScale(c, font.l.size, ScalingModes.diagonal);

double xlFont(BuildContext c) =>
    autoScale(c, font.xl.size, ScalingModes.diagonal);

double xxlFont(BuildContext c) =>
    autoScale(c, font.xxl.size, ScalingModes.diagonal);

// double screenHeightFraction(
//   BuildContext context, {
//   int dividedBy = 1,
//   double offsetBy = 0,
//   double max = 3000,
// }) => min((screenHeight(context) - offsetBy) / dividedBy, max);

// double screenWidthFraction(
//   BuildContext context, {
//   int dividedBy = 1,
//   double offsetBy = 0,
//   double max = 3000,
// }) => min((screenWidth(context) - offsetBy) / dividedBy, max);

// double halfScreenWidth(BuildContext context) => screenWidthFraction(context, dividedBy: 2);

// double thirdScreenWidth(BuildContext context) => screenWidthFraction(context, dividedBy: 3);

// double quarterScreenWidth(BuildContext context) => screenWidthFraction(context, dividedBy: 4);
