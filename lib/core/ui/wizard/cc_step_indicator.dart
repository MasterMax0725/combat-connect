import 'package:flutter/material.dart';

class CCStepIndicator extends StatelessWidget {
  const CCStepIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  final int currentStep;
  final int totalSteps;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: List.generate(
        totalSteps,
        (index) {
          final active =
              index < currentStep;

          return Expanded(
            child: Container(
              margin: EdgeInsets.only(
                right: index ==
                        totalSteps - 1
                    ? 0
                    : 8,
              ),
              height: 6,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(
                        100),
                color: active
                    ? theme.colorScheme.primary
                    : theme.dividerColor,
              ),
            ),
          );
        },
      ),
    );
  }
}