import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mhr_armor_search/components/SkillSelectPanel.dart';
import 'package:mhr_armor_search/pages/page_template.dart';

import '../../components/SlotSelector.dart';
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
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(text: "Step 1 Select Mandatory Skills"),
                Tab(text: "Step 2 Select Candidate Skills"),
                Tab(text: "Step 3 Set up stat equation(s)"),
                Tab(text: "Step 4 Perform Search (on specific stat)"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                SkillSelectPanel(),
                Text('MHR Armor Search a'),
                Text('MHR Armor Search'),
                Text('MHR Armor Search'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
