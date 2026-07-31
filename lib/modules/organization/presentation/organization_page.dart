import 'package:flutter/material.dart';

import '../../../core/widgets/app_scaffold.dart';
import '../../../shared/components/module_placeholder.dart';

class OrganizationPage extends StatelessWidget {
  const OrganizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Organization',
      body: ModulePlaceholder(
        title: 'Organization',
        description: 'Manage gyms, teams, and memberships.',
      ),
    );
  }
}
