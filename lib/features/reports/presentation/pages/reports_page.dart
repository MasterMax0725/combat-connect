import 'package:flutter/material.dart';

import '../../../../core/navigation/app_shell.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppShell(
      title: 'Reports',
      selectedRoute: '/reports',
      child: _ReportsContent(),
    );
  }
}

class _ReportsContent extends StatelessWidget {
  const _ReportsContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Reports Module\nComing Soon',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}