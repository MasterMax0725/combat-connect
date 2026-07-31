import 'package:flutter/material.dart';

import '../../../core/widgets/app_scaffold.dart';
import '../../../shared/components/module_placeholder.dart';

class IdentityPage extends StatelessWidget {
  const IdentityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Identity',
      body: ModulePlaceholder(
        title: 'Identity',
        description: 'Sign in, registration, and profile management.',
      ),
    );
  }
}
