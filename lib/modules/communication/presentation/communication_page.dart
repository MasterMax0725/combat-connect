import 'package:flutter/material.dart';

import '../../../core/widgets/app_scaffold.dart';
import '../../../shared/components/module_placeholder.dart';

class CommunicationPage extends StatelessWidget {
  const CommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Communication',
      body: ModulePlaceholder(
        title: 'Communication',
        description: 'Chat, announcements, and push notifications.',
      ),
    );
  }
}
