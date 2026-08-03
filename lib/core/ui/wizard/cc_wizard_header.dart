import 'package:flutter/material.dart';

class CCWizardHeader extends StatelessWidget {
  const CCWizardHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.currentStep,
    required this.totalSteps,
  });

  final String title;
  final String subtitle;

  final int currentStep;
  final int totalSteps;

  double get progress => currentStep / totalSteps;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          subtitle,
          style: theme.textTheme.bodyLarge,
        ),

        const SizedBox(height: 24),

        Row(
          children: [
            Text(
              'Step $currentStep of $totalSteps',
              style: theme.textTheme.titleMedium,
            ),

            const Spacer(),

            Text(
              '${(progress * 100).round()}%',
              style: theme.textTheme.titleMedium
                  ?.copyWith(
                fontWeight: FontWeight.bold,
                color:
                    theme.colorScheme.primary,
              ),
            ),
          ],
        ),

        const SizedBox(height: 10),

        ClipRRect(
          borderRadius:
              BorderRadius.circular(100),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 8,
          ),
        ),

        const SizedBox(height: 36),
      ],
    );
  }
}