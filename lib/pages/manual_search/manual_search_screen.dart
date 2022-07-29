import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mhr_armor_search/pages/page_template.dart';

import '../../components/SkillSelectPanel.dart';
import '../../main_router.dart';

class ManualSearchScreen extends StatefulWidget {
  const ManualSearchScreen({
    Key? key,
    this.router,
    this.title = "MHR Armor Search - Manual",
  }) : super(key: key);

  final MainRouterDelegate? router;
  final String title;

  @override
  State<StatefulWidget> createState() => _ManualSearchScreenState();
}

class _ManualSearchScreenState extends State<ManualSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SkillSelectPanel();
  }
}
