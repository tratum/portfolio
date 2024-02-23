import 'package:flutter/material.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeViewTablet extends ViewModelWidget<HomeViewModel> {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: ResponsiveWebLayout.buildTabletLayout(
        context: context,
        highResTabletLayout: const Placeholder(),
        standardTabletLayout: const Placeholder(),
      ),
    );
  }
}
