import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mhr_armor_search/components/SlotSelector.dart';
import 'package:mhr_armor_search/pages/page_template.dart';

import '../../main_router.dart';

class SkillSelectPanel extends StatefulWidget {
  const SkillSelectPanel({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SkillSelectPanelState();
}

class _SkillSelectPanelState extends State<SkillSelectPanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 80,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            // NOT RWO
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 80,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 16,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a search term',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox.square(
                dimension: 80,
                child: IconButton(
                  icon: const Icon(Icons.sort),
                  tooltip: 'Change sorting behavior',
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 80,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 80,
                width: 150,
                child: Text("Weapon Slots"),
              ),
              Expanded(
                child: SizedBox(
                  height: 80,
                  width: 600,
                  child: SlotSelector(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
