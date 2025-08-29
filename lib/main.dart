import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app/app.classes.dart';
import 'routes/route.404/404.layout.dart';
import 'routes/route.home/home.view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

final GoRouter _gRouter = GoRouter(
  initialLocation: '/',
  routes: [GoRoute(path: '/', builder: (context, state) => const HomeView())],
  errorBuilder: (context, state) => const ErrorView(),
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    PdfViewer.registerPdfIframeView(
      MediaQuery.of(context).size.height / 2,
      MediaQuery.of(context).size.width / 2,
    );
    PdfViewer.registerPdfIframeViewMobile(
      MediaQuery.of(context).size.height / 2,
      MediaQuery.of(context).size.width / 2,
    );
    return MaterialApp.router(
      title: "tratum.dev",
      routerConfig: _gRouter,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          PdfViewer.registerPdfIframeView(
            MediaQuery.of(context).size.height / 2,
            MediaQuery.of(context).size.width / 2,
          );
          PdfViewer.registerPdfIframeViewMobile(
            MediaQuery.of(context).size.height / 2,
            MediaQuery.of(context).size.width / 2,
          );
        });
        return child!;
      },
    );
  }
}
