import 'package:flutter/material.dart';

import '../../../../core/navigation/app_shell.dart';

class OrganizationPage extends StatelessWidget {
  const OrganizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppShell(
      title: 'Organization',
      selectedRoute: '/organization',
      child: _OrganizationContent(),
    );
  }
}

class _OrganizationContent extends StatelessWidget {
  const _OrganizationContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Organization Module\nComing Soon',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}