import 'package:flutter/material.dart';

import '../../../app/router.dart';
import '../../../core/widgets/app_scaffold.dart';
import '../../../shared/extensions/build_context_extensions.dart';
import '../../../shared/models/module_info.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const _modules = [
    ModuleInfo(
      name: 'Identity',
      route: AppRouter.identity,
      description: 'Authentication and user profiles.',
    ),
    ModuleInfo(
      name: 'Organization',
      route: AppRouter.organization,
      description: 'Teams, roles, and org structure.',
    ),
    ModuleInfo(
      name: 'Training',
      route: AppRouter.training,
      description: 'Sessions, drills, and progress.',
    ),
    ModuleInfo(
      name: 'Commerce',
      route: AppRouter.commerce,
      description: 'Products, orders, and billing.',
    ),
    ModuleInfo(
      name: 'Communication',
      route: AppRouter.communication,
      description: 'Messages and notifications.',
    ),
    ModuleInfo(
      name: 'Reports',
      route: AppRouter.reports,
      description: 'Analytics and exports.',
    ),
    ModuleInfo(
      name: 'Settings',
      route: AppRouter.settings,
      description: 'App and account preferences.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Combat Connect',
      actions: [
        IconButton(
          onPressed: () => context.pushNamed(AppRouter.settings),
          icon: const Icon(Icons.settings_outlined),
        ),
      ],
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: _modules.length,
        separatorBuilder: (_, _) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final module = _modules[index];
          return Card(
            child: ListTile(
              title: Text(module.name),
              subtitle: Text(module.description),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.pushNamed(module.route),
            ),
          );
        },
      ),
    );
  }
}
