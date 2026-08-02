import 'package:flutter/material.dart';

import '../../../../core/navigation/app_shell.dart';

class TournamentsPage extends StatelessWidget {
  const TournamentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppShell(
      title: 'Tournaments',
      selectedRoute: '/tournaments',
      child: _TournamentsContent(),
    );
  }
}

class _TournamentsContent extends StatelessWidget {
  const _TournamentsContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Tournament Module\nComing Soon',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}