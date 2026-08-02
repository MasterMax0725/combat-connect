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
      route: '/',
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
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 28),

          const Icon(
            Icons.sports_martial_arts,
            size: 56,
            color: CCColors.primary,
          ),

          const SizedBox(height: 16),

          const Text(
            'Combat Connect',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            'Train • Manage • Grow',
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 13,
            ),
          ),

          const SizedBox(height: 28),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                final selected = item.route == selectedRoute;

                return Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    leading: Icon(
                      item.icon,
                      color: selected
                          ? Colors.white
                          : Colors.grey.shade700,
                    ),
                    title: Text(
                      item.title,
                      style: TextStyle(
                        fontWeight: selected
                            ? FontWeight.bold
                            : FontWeight.w500,
                        color: selected
                            ? Colors.white
                            : Colors.black87,
                      ),
                    ),
                    tileColor: selected
                        ? CCColors.primary
                        : Colors.transparent,
                    onTap: () => onNavigate(item.route),
                  ),
                );
              },
            ),
          ),

          const Divider(height: 1),

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