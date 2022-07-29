import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mhr_armor_search/components/SkillSelectPanel.dart';
import 'package:mhr_armor_search/pages/page_template.dart';

import '../../main_router.dart';

class SmartSearchScreen extends StatefulWidget {
  const SmartSearchScreen({
    Key? key,
    this.router,
    this.title = "MHR Armor Search - Manual",
  }) : super(key: key);

  final MainRouterDelegate? router;
  final String title;

  @override
  State<StatefulWidget> createState() => _SmartSearchScreenState();
}

class _SmartSearchScreenState extends State<SmartSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SkillSelectPanel();
  }
}
