import 'package:flutter/material.dart';

import '../../../core/widgets/app_scaffold.dart';
import '../../../shared/components/module_placeholder.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Reports',
      body: ModulePlaceholder(
        title: 'Reports',
        description: 'View performance metrics and export data.',
      ),
    );
  }
}
