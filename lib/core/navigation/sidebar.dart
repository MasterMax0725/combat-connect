import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'navigation_item.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    super.key,
    required this.selectedRoute,
    required this.onNavigate,
  });

  final String selectedRoute;
  final ValueChanged<String> onNavigate;

  static const items = [
    NavigationItem(
      title: 'Dashboard',
      icon: Icons.dashboard_outlined,
      route: '/dashboard',
    ),
    NavigationItem(
      title: 'Students',
      icon: Icons.people_outline,
      route: '/students',
    ),
    NavigationItem(
      title: 'Attendance',
      icon: Icons.fact_check_outlined,
      route: '/attendance',
    ),
    NavigationItem(
      title: 'Promotions',
      icon: Icons.workspace_premium_outlined,
      route: '/promotions',
    ),
    NavigationItem(
      title: 'Tournaments',
      icon: Icons.emoji_events_outlined,
      route: '/tournaments',
    ),
    NavigationItem(
      title: 'Billing',
      icon: Icons.payments_outlined,
      route: '/billing',
    ),
    NavigationItem(
      title: 'Reports',
      icon: Icons.bar_chart_outlined,
      route: '/reports',
    ),
    NavigationItem(
      title: 'Organization',
      icon: Icons.apartment_outlined,
      route: '/organization',
    ),
    NavigationItem(
      title: 'Settings',
      icon: Icons.settings_outlined,
      route: '/settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 32),

          const Icon(
            Icons.sports_martial_arts,
            size: 56,
            color: CCColors.primary,
          ),

          const SizedBox(height: 16),

          const Text(
            'Combat Connect',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 32),

          Expanded(
            child: ListView(
              children: items.map((item) {
                final selected = item.route == selectedRoute;

                return ListTile(
                  leading: Icon(
                    item.icon,
                    color: selected
                        ? CCColors.primary
                        : Colors.grey,
                  ),
                  title: Text(item.title),
                  selected: selected,
                  selectedTileColor:
                      CCColors.primary.withValues(alpha: .08),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onTap: () => onNavigate(item.route),
                );
              }).toList(),
            ),
          ),

          const Divider(),

          const ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text('Coach Max'),
            subtitle: Text('Administrator'),
          ),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Sign Out'),
            onTap: () {},
          ),

          const SizedBox(height: 12),
        ],
      ),
    );
  }
}