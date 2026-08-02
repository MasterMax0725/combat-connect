import 'package:flutter/material.dart';

import '../../../../core/navigation/app_shell.dart';

class PromotionsPage extends StatelessWidget {
  const PromotionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppShell(
      title: 'Promotions',
      selectedRoute: '/promotions',
      child: _PromotionsContent(),
    );
  }
}

class _PromotionsContent extends StatelessWidget {
  const _PromotionsContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Promotions Module\nComing Soon',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}