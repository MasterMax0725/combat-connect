import 'package:flutter/material.dart';

import '../../../core/widgets/app_scaffold.dart';
import '../../../shared/components/module_placeholder.dart';

class CommercePage extends StatelessWidget {
  const CommercePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Commerce',
      body: ModulePlaceholder(
        title: 'Commerce',
        description: 'Sell memberships, gear, and event tickets.',
      ),
    );
  }
}
