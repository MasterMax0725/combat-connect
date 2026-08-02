import 'package:flutter/material.dart';

import '../../../../core/navigation/app_shell.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppShell(
      title: 'Settings',
      selectedRoute: '/settings',
      child: _SettingsContent(),
    );
  }
}

class _SettingsContent extends StatelessWidget {
  const _SettingsContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings Module\nComing Soon',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}