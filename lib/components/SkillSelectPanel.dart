import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mhr_armor_search/components/SlotSelector.dart';
import 'package:mhr_armor_search/pages/page_template.dart';

import '../../main_router.dart';
import '../l10n/MyLocalizations.dart';

class SkillSelectPanel extends StatefulWidget {
  SkillSelectPanel({
    Key? key,
    this.category,
    this.skillIds,
    this.withLevels = true,
  }) : super(key: key);

  String? category;
  List<int>? skillIds = [];
  bool withLevels;

  @override
  State<StatefulWidget> createState() => _SkillSelectPanelState();
}

class _SkillSelectPanelState extends State<SkillSelectPanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.category != null) Text(widget.category!),
        Text(MyLocalizations.of(context)!.helloWorld),
        // Text(AppLocalizations.of(context)["helloWorld"]),
      ],
    );
  }
}
