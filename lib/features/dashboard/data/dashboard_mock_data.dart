import 'package:flutter/material.dart';

import '../domain/entities/dashboard_stat.dart';

class DashboardMockData {
  DashboardMockData._();

  static const stats = [
    DashboardStat(
      title: 'Students',
      value: '548',
      icon: Icons.people,
    ),
    DashboardStat(
      title: 'Coaches',
      value: '18',
      icon: Icons.sports,
    ),
    DashboardStat(
      title: 'Classes',
      value: '24',
      icon: Icons.calendar_month,
    ),
    DashboardStat(
      title: 'Revenue',
      value: '₱154,200',
      icon: Icons.payments,
    ),
  ];
}