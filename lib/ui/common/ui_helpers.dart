import 'dart:math';

import 'package:flutter/material.dart';

const double _tinySize = 5.0;
const double _smallSize = 10.0;
const double _semiSmallSize = 15;
const double _mediumSize = 25.0;
const double _semiMediumSize = 30.0;
const double _largeSize = 50.0;
const double _semiLargeSize = 80.0;
const double _semiMassiveSize = 100.0;
const double _massiveSize = 120.0;
const double _superMassiveSize = 200.0;
const double _megaSize = 250.0;
const double _superMegaSize = 320.0;

const Widget horizontalSpaceTiny = SizedBox(width: _tinySize);
const Widget horizontalSpaceSemiSmall = SizedBox(width: _semiSmallSize);
const Widget horizontalSpaceSmall = SizedBox(width: _smallSize);
const Widget horizontalSpaceMedium = SizedBox(width: _mediumSize);
const Widget horizontalSpaceSemiMedium = SizedBox(width: _semiMediumSize);
const Widget horizontalSpaceLarge = SizedBox(width: _largeSize);
const Widget horizontalSpaceSemiLarge = SizedBox(width: _semiLargeSize);
const Widget horizontalSpaceSemiMassive = SizedBox(width: _semiMassiveSize);
const Widget horizontalSpaceMassive = SizedBox(width: _massiveSize);
const Widget horizontalSpaceSuperMassive = SizedBox(width: _superMassiveSize);
const Widget horizontalSpaceMega = SizedBox(width: _megaSize);
const Widget horizontalSpaceSuperMega = SizedBox(width: _superMegaSize);

const Widget verticalSpaceTiny = SizedBox(height: _tinySize);
const Widget verticalSpaceSemiSmall = SizedBox(height: _semiSmallSize);
const Widget verticalSpaceSmall = SizedBox(height: _smallSize);
const Widget verticalSpaceMedium = SizedBox(height: _mediumSize);
const Widget verticalSpaceSemiMedium = SizedBox(height: _semiMediumSize);
const Widget verticalSpaceLarge = SizedBox(height: _largeSize);
const Widget verticalSpaceSemiLarge = SizedBox(height: _semiLargeSize);
const Widget verticalSpaceSemiMassive = SizedBox(height: _semiMassiveSize);
const Widget verticalSpaceMassive = SizedBox(height: _massiveSize);
const Widget verticalSpaceSuperMassive = SizedBox(height: _superMassiveSize);
const Widget verticalSpaceMega = SizedBox(height: _megaSize);
const Widget verticalSpaceSuperMega = SizedBox(height: _superMegaSize);

Widget spacedDivider = const Column(
  children: <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

Widget verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);

double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 14, max: 15);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 16, max: 17);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 21, max: 31);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 30);

double getResponsiveFontSize(BuildContext context,
    {double? fontSize, double? max}) {
  max ??= 100;

  var responsiveSize = min(
      screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
      max);

  return responsiveSize;
}
