import 'package:flutter/material.dart';
import 'package:mhr_armor_search/main_router.dart';
import 'package:mhr_armor_search/pages/smart_search/smart_search_screen.dart';

import 'pages/manual_search/manual_search_screen.dart';

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
    // return MaterialApp.router(
    //   title: "",
    //   routeInformationParser: _routeInformationParser,
    //   routerDelegate: _routerDelegate,
    // );
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "Manual Search"),
                Tab(text: "Smart Search"),
              ],
            ),
            title: const Text('MHR Armor Search'),
          ),
          body: const TabBarView(
            children: [
              ManualSearchScreen(),
              SmartSearchScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
