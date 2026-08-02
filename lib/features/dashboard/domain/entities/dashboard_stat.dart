import 'package:flutter/material.dart';

class DashboardStat {
  const DashboardStat({
    required this.title,
    required this.value,
    required this.icon,
  });

  final String title;
  final String value;
  final IconData icon;
}