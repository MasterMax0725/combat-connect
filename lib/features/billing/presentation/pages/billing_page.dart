import 'package:flutter/material.dart';

import '../../../../core/navigation/app_shell.dart';

class BillingPage extends StatelessWidget {
  const BillingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppShell(
      title: 'Billing',
      selectedRoute: '/billing',
      child: _BillingContent(),
    );
  }
}

class _BillingContent extends StatelessWidget {
  const _BillingContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Billing Module\nComing Soon',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}