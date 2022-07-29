import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mhr_armor_search/pages/manual_search/manual_search.dart';
import 'package:mhr_armor_search/pages/smart_search.dart';

class MainRoutePath {
  final bool isSmartSearch;

  MainRoutePath.home() : isSmartSearch = false;

  MainRoutePath.smartSearch() : isSmartSearch = true;

  bool get isHomePage => !isSmartSearch;

  bool get isSmartSearchPage => isSmartSearch;
}

class MainRouterDelegate extends RouterDelegate<MainRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MainRoutePath> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  MainRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  bool showingSmartSearch = false;

  @override
  MainRoutePath get currentConfiguration {
    return showingSmartSearch
        ? MainRoutePath.smartSearch()
        : MainRoutePath.home();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          key: const ValueKey("ManualSearchPage"),
          child: ManualSearchPage(
            router: this,
          ),
        ),
        if (showingSmartSearch)
          MaterialPage(
            key: const ValueKey("SmartSearchPage"),
            child: SmartSearchPage(
              router: this,
            ),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        showingSmartSearch = false;
        notifyListeners();

        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(MainRoutePath configuration) {
    if (configuration.isSmartSearchPage) {
      showingSmartSearch = true;
    } else {
      showingSmartSearch = false;
    }

    return SynchronousFuture(null);
  }

  void navigateToSmartSearch() {
    showingSmartSearch = true;
    notifyListeners();
  }

  void navigateToHome() {
    showingSmartSearch = false;
    notifyListeners();
  }
}

class MainRouteInformationParser //
    extends RouteInformationParser<MainRoutePath> {
  @override
  Future<MainRoutePath> parseRouteInformation(
      RouteInformation routeInformation //
      ) async {
    final uri = Uri.parse(routeInformation.location ?? "");

    print(
        "parseRouteInformation: ${routeInformation.location} ${uri.pathSegments}");

    if (uri.pathSegments.isEmpty) {
      return MainRoutePath.home();
    }

    if (uri.pathSegments.isNotEmpty) {
      if (uri.pathSegments[0] == "smart-search") {
        return MainRoutePath.smartSearch();
      }
    }

    return MainRoutePath.home();
  }

  @override
  RouteInformation restoreRouteInformation(MainRoutePath configuration) {
    print("restoreRouteInformation: $configuration");

    if (configuration.isSmartSearchPage) {
      return const RouteInformation(location: '/smart-search');
    }
    if (configuration.isHomePage) {
      return const RouteInformation(location: '/');
    }
    return const RouteInformation(location: '/');
  }

  @override
  void setInitialRoutePath() {}
}
