import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              if (route != selectedRoute) {
                context.go(route);
              }
            },
          ),
          Expanded(
            child: Container(
              color: const Color(0xFFF8FAFC),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}