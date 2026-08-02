import 'package:flutter/material.dart';

import 'sidebar.dart';
import 'top_bar.dart';

class AppShell extends StatelessWidget {
  const AppShell({
    super.key,
    required this.title,
    required this.selectedRoute,
    required this.child,
  });

  final String title;
  final String selectedRoute;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(title: title),
      body: Row(
        children: [
          Sidebar(
            selectedRoute: selectedRoute,
            onNavigate: (route) {
              // Router integration comes next sprint.
            },
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}