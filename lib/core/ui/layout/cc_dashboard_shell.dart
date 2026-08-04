import 'package:flutter/material.dart';

class CCDashboardShell extends StatelessWidget {
  const CCDashboardShell({
    super.key,
    required this.sidebar,
    required this.topBar,
    required this.child,
  });

  final Widget sidebar;
  final Widget topBar;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111111),
      body: SafeArea(
        child: Row(
          children: [
            SizedBox(
              width: 280,
              child: sidebar,
            ),

            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 72,
                    child: topBar,
                  ),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(32),
                      color: const Color(0xFF181818),
                      child: child,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}