import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import '../main_router.dart';

class PageTemplate extends StatefulWidget {
  const PageTemplate({
    Key? key,
    required this.router,
    this.title = "MHR Armor Search",
    this.children,
  }) : super(key: key);

  final MainRouterDelegate? router;
  final String title;
  final List<Widget>? children;

  @override
  State<StatefulWidget> createState() => _PageTemplateState();
}

class _PageTemplateState extends State<PageTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: Color(0xFFDFDFDF),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: 'Manual Search',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigator.pushNamed(context, '/smart-search');
                          widget.router
                              // ?.setNewRoutePath(MainRoutePath.smartSearch());
                              ?.navigateToHome();
                        },
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: 'Smart Search',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigator.pushNamed(context, '/smart-search');
                          widget.router
                              // ?.setNewRoutePath(MainRoutePath.smartSearch());
                              ?.navigateToSmartSearch();
                        },
                    ),
                  ),
                ),
              ],
            ),
          ),
          ...?widget.children,
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.router?.navigateToHome();
          // Navigator.push(
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // Th;
    );
  }
}
