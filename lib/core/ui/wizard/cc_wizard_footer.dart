import 'package:flutter/material.dart';

import '../buttons/cc_button.dart';

class CCWizardFooter extends StatelessWidget {
  const CCWizardFooter({
    super.key,
    this.onBack,
    this.onNext,
    this.canContinue = true,
    this.loading = false,
    this.backLabel = 'Back',
    this.nextLabel = 'Continue',
  });

  final VoidCallback? onBack;
  final VoidCallback? onNext;

  final bool canContinue;
  final bool loading;

  final String backLabel;
  final String nextLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (onBack != null)
          CCButton(
            label: backLabel,
            icon: Icons.arrow_back,
            type: CCButtonType.secondary,
            onPressed: onBack,
          ),

        const Spacer(),

        CCButton(
          label: nextLabel,
          icon: Icons.arrow_forward,
          loading: loading,
          onPressed:
              canContinue ? onNext : null,
        ),
      ],
    );
  }
}