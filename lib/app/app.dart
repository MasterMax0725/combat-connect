import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import 'router.dart';

class CombatConnectApp extends StatelessWidget {
  const CombatConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Combat Connect',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRouter.dashboard,
    );
  }
}
