import 'dart:math';

import 'package:flutter/material.dart';

const double _tiny = 5.0;
const double _smallSize = 10.0;
const double _smallPlus = 15;
const double _medium = 25.0;
const double _mediumPlus = 30.0;
const double _large = 50.0;
const double _largePlus = 80.0;
const double _extraLarge = 100.0;
const double _massive = 120.0;
const double _superMassive = 200.0;
const double _mega = 250.0;
const double _ultraMega = 320.0;

const Widget horizontalSpaceTiny = SizedBox(width: _tiny);
const Widget horizontalSpaceSmallPlus = SizedBox(width: _smallPlus);
const Widget horizontalSpaceSmall = SizedBox(width: _smallSize);
const Widget horizontalSpaceMedium = SizedBox(width: _medium);
const Widget horizontalSpaceMediumPlus = SizedBox(width: _mediumPlus);
const Widget horizontalSpaceLarge = SizedBox(width: _large);
const Widget horizontalSpaceLargePlus = SizedBox(width: _largePlus);
const Widget horizontalSpaceExtraLarge = SizedBox(width: _extraLarge);
const Widget horizontalSpaceMassive = SizedBox(width: _massive);
const Widget horizontalSpaceSuperMassive = SizedBox(width: _superMassive);
const Widget horizontalSpaceMega = SizedBox(width: _mega);
const Widget horizontalSpaceUltraMega = SizedBox(width: _ultraMega);

const Widget verticalSpaceTiny = SizedBox(height: _tiny);
const Widget verticalSpaceSmall = SizedBox(height: _smallSize);
const Widget verticalSpaceSmallPlus = SizedBox(height: _smallPlus);
const Widget verticalSpaceMedium = SizedBox(height: _medium);
const Widget verticalSpaceMediumPlus = SizedBox(height: _mediumPlus);
const Widget verticalSpaceLarge = SizedBox(height: _large);
const Widget verticalSpaceLargePlus = SizedBox(height: _largePlus);
const Widget verticalSpaceExtraLarge = SizedBox(height: _extraLarge);
const Widget verticalSpaceMassive = SizedBox(height: _massive);
const Widget verticalSpaceSuperMassive = SizedBox(height: _superMassive);
const Widget verticalSpaceMega = SizedBox(height: _mega);
const Widget verticalSpaceUltraMega = SizedBox(height: _ultraMega);

Widget spaceDivider = const Column(
  children: <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

Widget horizontalSpace(double width) => SizedBox(width: width);
Widget verticalSpace(double height) => SizedBox(height: height);

double getScreenWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;

double getScreenHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((getScreenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((getScreenWidth(context) - offsetBy) / dividedBy, max);

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
