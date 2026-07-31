import 'package:flutter/material.dart';

import 'router.dart';
import 'theme.dart';

class CombatConnectApp extends StatelessWidget {
  const CombatConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Combat Connect',
      theme: AppTheme.light,
      routerConfig: appRouter,
    );
  }
}