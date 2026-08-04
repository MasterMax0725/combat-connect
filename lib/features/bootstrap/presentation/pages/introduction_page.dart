import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:combat_connect/app/app_routes.dart';
import 'package:combat_connect/core/ui/buttons/cc_button.dart';
import 'package:combat_connect/core/ui/layout/cc_auth_shell.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CCAuthShell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'COMBAT\n',
                  style: theme.textTheme.displaySmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                TextSpan(
                  text: 'CONNECT',
                  style: theme.textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          Text(
            'Built for Martial Arts.\nDesigned for Growth.',
            style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.white70,
              height: 1.7,
            ),
          ),

          const SizedBox(height: 56),

          Text(
            'Every Black Belt\nstarted as a White Belt.',
            style: theme.textTheme.headlineLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: 1.15,
            ),
          ),

          const SizedBox(height: 24),

          Text(
            'Every champion started with a first class.\n'
            'Every great academy started with one decision.',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.white70,
              height: 1.8,
            ),
          ),

          const SizedBox(height: 40),

          Text(
            'Today is yours.',
            style: theme.textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(),

          SizedBox(
            width: double.infinity,
            height: 56,
            child: CCButton(
              label: 'ENTER COMBAT CONNECT',
              onPressed: () {
                context.goNamed(AppRoutes.loginName);
              },
            ),
          ),
        ],
      ),
    );
  }
}