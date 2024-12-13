import 'package:flutter/material.dart';

import '../../app/app.constants.dart';

Widget desktop404View(BuildContext context) {
  return const Scaffold(
    backgroundColor: Color(0XFF202020),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            '404',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontWeight: FontWeight.w800,
              height: 0.95,
              letterSpacing: 20.0,
            ),
          ),
          verticalSpaceSmall,
          SelectableText(
            'PAGE NOT FOUND',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 20.0,
              wordSpacing: 10.0,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget mobile404View(BuildContext context) {
  return const Scaffold(
    backgroundColor: Color(0XFF202020),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            '404',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontWeight: FontWeight.w800,
              height: 0.95,
              letterSpacing: 20.0,
            ),
          ),
          verticalSpaceSmall,
          SelectableText(
            'PAGE NOT FOUND',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 20.0,
              wordSpacing: 10.0,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget tablet404View(BuildContext context) {
  return const Scaffold(
    backgroundColor: Color(0XFF202020),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            '404',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontWeight: FontWeight.w800,
              height: 0.95,
              letterSpacing: 20.0,
            ),
          ),
          verticalSpaceSmall,
          SelectableText(
            'PAGE NOT FOUND',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 20.0,
              wordSpacing: 10.0,
            ),
          ),
        ],
      ),
    ),
  );
}
