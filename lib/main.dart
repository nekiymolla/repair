import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:repair/presentation/authorization/authorization_page.dart';
import 'package:repair/route/router.gr.dart';

void main() {
  final _appRouter = AppRouter();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerDelegate: _appRouter.delegate(),
    routeInformationParser: _appRouter.defaultRouteParser(),
  ));
}
