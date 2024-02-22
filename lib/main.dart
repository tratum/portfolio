import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_strategy/url_strategy.dart';
import '../ui/common/app_functions.dart';
import 'app/app.bottomsheets.dart';
import 'app/app.dialogs.dart';
import 'app/app.locator.dart';
import 'app/app.router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await setupLocator(stackedRouter: stackedRouter);
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    PdfViewer.registerPdfIframeView(MediaQuery.of(context).size.height / 2,
        MediaQuery.of(context).size.width / 2);
    PdfViewer.registerPdfIframeViewMobile(
        MediaQuery.of(context).size.height / 2,
        MediaQuery.of(context).size.width / 2);
    return ResponsiveApp(
      builder: (_) => MaterialApp.router(
        title: "tratum.dev",
        routerDelegate: stackedRouter.delegate(),
        routeInformationParser: stackedRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
      ),
    ).animate().fadeIn(
          delay: const Duration(milliseconds: 50),
          duration: const Duration(milliseconds: 100),
        );
  }
}
