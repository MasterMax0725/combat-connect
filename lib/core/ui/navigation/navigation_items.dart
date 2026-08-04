import 'package:flutter/material.dart';

import 'models/navigation_item_model.dart';

const navigationItems = [
  NavigationItemModel(
    label: 'Dashboard',
    icon: Icons.dashboard_outlined,
    route: '/dashboard',
  ),
  NavigationItemModel(
    label: 'Students',
    icon: Icons.groups_outlined,
    route: '/students',
  ),
  NavigationItemModel(
    label: 'Attendance',
    icon: Icons.fact_check_outlined,
    route: '/attendance',
  ),
  NavigationItemModel(
    label: 'Promotions',
    icon: Icons.workspace_premium_outlined,
    route: '/promotions',
  ),
  NavigationItemModel(
    label: 'Tournaments',
    icon: Icons.emoji_events_outlined,
    route: '/tournaments',
  ),
  NavigationItemModel(
    label: 'Billing',
    icon: Icons.payments_outlined,
    route: '/billing',
  ),
  NavigationItemModel(
    label: 'Reports',
    icon: Icons.bar_chart_outlined,
    route: '/reports',
  ),
  NavigationItemModel(
    label: 'Academy',
    icon: Icons.business_outlined,
    route: '/organization',
  ),
  NavigationItemModel(
    label: 'Settings',
    icon: Icons.settings_outlined,
    route: '/settings',
  ),
];