import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'navigation_items.dart';
import 'models/navigation_item_model.dart';

class CCSidebar extends StatelessWidget {
  const CCSidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentRoute =
        GoRouterState.of(context).uri.toString();

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF151515),
        border: Border(
          right: BorderSide(
            color: Color(0xFF252525),
          ),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 36),

          const Icon(
            Icons.workspace_premium,
            color: Color(0xFFA65A4D),
            size: 40,
          ),

          const SizedBox(height: 16),

          const Text(
            'COMBAT\nCONNECT',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              height: 1.1,
            ),
          ),

          const SizedBox(height: 48),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: navigationItems.length,
              itemBuilder: (context, index) {
                final NavigationItemModel item =
                    navigationItems[index];

                final selected =
                    currentRoute == item.route;

                return _NavigationTile(
                  item: item,
                  selected: selected,
                );
              },
            ),
          ),

          const Divider(
            color: Color(0xFF252525),
            height: 1,
          ),

          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: Color(0xFFA65A4D),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(width: 14),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Coach Max',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height: 2),

                      Text(
                        'Academy Owner',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NavigationTile extends StatelessWidget {
  const _NavigationTile({
    required this.item,
    required this.selected,
  });

  final NavigationItemModel item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 4,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () {
            context.go(item.route);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 220),
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: selected
                  ? const Color(0xFFA65A4D)
                  : Colors.transparent,
            ),
            child: Row(
              children: [
                Icon(
                  item.icon,
                  color: selected
                      ? Colors.white
                      : Colors.white70,
                ),

                const SizedBox(width: 18),

                Expanded(
                  child: Text(
                    item.label,
                    style: TextStyle(
                      color: selected
                          ? Colors.white
                          : Colors.white70,
                      fontWeight: selected
                          ? FontWeight.w600
                          : FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}