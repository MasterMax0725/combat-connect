import 'package:flutter/material.dart';

import '../../../../core/navigation/app_shell.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppShell(
      title: 'Attendance',
      selectedRoute: '/attendance',
      child: _AttendanceContent(),
    );
  }
}

class _AttendanceContent extends StatelessWidget {
  const _AttendanceContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Attendance Module\nComing Soon',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}