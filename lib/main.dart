import 'package:flutter/material.dart';
import 'package:mhr_armor_search/main_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MainRouteInformationParser _routeInformationParser =
      MainRouteInformationParser();
  final MainRouterDelegate _routerDelegate = MainRouterDelegate();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "",
      routeInformationParser: _routeInformationParser,
      routerDelegate: _routerDelegate,
    );
  }
}
