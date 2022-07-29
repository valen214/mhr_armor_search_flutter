import 'package:flutter/material.dart';

import '../main_router.dart';
import 'page_template.dart';

class SmartSearchPage extends StatefulWidget {
  const SmartSearchPage({
    Key? key,
    this.router,
  }) : super(key: key);

  final MainRouterDelegate? router;

  @override
  State<StatefulWidget> createState() => _SmartSearchPageState();
}

class _SmartSearchPageState extends State<SmartSearchPage> {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      router: widget.router,
      children: [
        Column(children: [
          FloatingActionButton(
            onPressed: () {
              widget.router?.navigateToHome();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const Text("abc")
        ]),
      ],
    );
  }
}
