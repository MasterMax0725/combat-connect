import 'package:flutter/material.dart';

import '../../../core/widgets/app_scaffold.dart';
import '../../../shared/components/module_placeholder.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Training',
      body: ModulePlaceholder(
        title: 'Training',
        description: 'Schedule classes, track attendance, and log workouts.',
      ),
    );
  }
}
