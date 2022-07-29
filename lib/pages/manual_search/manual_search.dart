import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mhr_armor_search/pages/page_template.dart';

import '../../main_router.dart';

class ManualSearchPage extends StatefulWidget {
  const ManualSearchPage({
    Key? key,
    this.router,
    this.title = "MHR Armor Search - Manual",
  }) : super(key: key);

  final MainRouterDelegate? router;
  final String title;

  @override
  State<StatefulWidget> createState() => _ManualSearchPageState();
}

class _ManualSearchPageState extends State<ManualSearchPage> {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      router: widget.router,
      children: [
        Text("MAIN PAGE"),
      ],
    );
  }
}
