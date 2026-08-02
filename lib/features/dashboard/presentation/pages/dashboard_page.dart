import 'package:flutter/material.dart';

import '../../../../core/navigation/app_shell.dart';
import '../../../../core/widgets/stat_card.dart';
import '../../data/dashboard_mock_data.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppShell(
      title: 'Dashboard',
      selectedRoute: '/dashboard',
      child: _DashboardContent(),
    );
  }
}

class _DashboardContent extends StatelessWidget {
  const _DashboardContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back, Coach Max 👋',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              "Here's what's happening today.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 32),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1.4,
              children: DashboardMockData.stats
                  .map(
                    (stat) => StatCard(
                      title: stat.title,
                      value: stat.value,
                      icon: stat.icon,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}