import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

/*
https://docs.flutter.dev/development/accessibility-and-localization/
internationalization#defining-a-class-for-the-apps-localized-resources
*/
class MyLocalizations {
  MyLocalizations(this.localeName);
  final String localeName;

  static Future<MyLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode == null || locale.countryCode!.isEmpty
            ? locale.languageCode
            : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    // return initializeMessages(localeName).then((_) {
    //   return MyLocalizations(localeName);
    // });
    return Future.sync(() => MyLocalizations(localeName));
  }

  static MyLocalizations? of(BuildContext context) {
    return Localizations.of<MyLocalizations>(context, MyLocalizations);
  }

  String skill(int id) {
    return "";
  }

  String get helloWorld {
    return "HI";
  }
}
