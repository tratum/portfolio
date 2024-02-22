import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import 'unknown_viewmodel.dart';

class UnknownViewDesktop extends ViewModelWidget<UnknownViewModel> {
  const UnknownViewDesktop({super.key});

  @override
  Widget build(BuildContext context, UnknownViewModel viewModel) {
    return const Scaffold(
      backgroundColor: kcBackgroundColor,
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
}
