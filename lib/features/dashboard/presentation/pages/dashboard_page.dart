import 'package:flutter/material.dart';

import '../../../../core/navigation/app_shell.dart';
import '../../../../core/widgets/stat_card.dart';
import '../../data/dashboard_mock_data.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppShell(
      title: 'Dashboard',
      selectedRoute: '/dashboard',
      child: _DashboardContent(),
    );
  }
}

class _DashboardContent extends StatelessWidget {
  const _DashboardContent();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome back, Coach Max 👋',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Train • Manage • Grow',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade600,
            ),
          ),

          const SizedBox(height: 40),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: DashboardMockData.stats
                .map(
                  (stat) => SizedBox(
                    width: 260,
                    height: 210,
                    child: StatCard(
                      title: stat.title,
                      value: stat.value,
                      icon: stat.icon,
                      subtitle: '+12% this month',
                    ),
                  ),
                )
                .toList(),
          ),

          const SizedBox(height: 40),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _Panel(
                  title: "Today's Classes",
                  child: Column(
                    children: const [
                      _ScheduleTile(
                        time: "4:00 PM",
                        title: "Kids Beginners",
                      ),
                      Divider(),
                      _ScheduleTile(
                        time: "5:30 PM",
                        title: "Intermediate",
                      ),
                      Divider(),
                      _ScheduleTile(
                        time: "7:00 PM",
                        title: "Black Belts",
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 24),

              Expanded(
                child: _Panel(
                  title: "Recent Activity",
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.workspace_premium),
                        title: Text("John promoted to Blue Belt"),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(Icons.payments),
                        title: Text("Maria paid tuition"),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(Icons.fact_check),
                        title: Text("Attendance submitted"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 40),

          Text(
            "Quick Actions",
            style: Theme.of(context).textTheme.headlineSmall,
          ),

          const SizedBox(height: 20),

          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.person_add),
                label: const Text("Student"),
              ),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.fact_check),
                label: const Text("Attendance"),
              ),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.workspace_premium),
                label: const Text("Promotion"),
              ),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.emoji_events),
                label: const Text("Tournament"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Panel extends StatelessWidget {
  const _Panel({
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            child,
          ],
        ),
      ),
    );
  }
}

class _ScheduleTile extends StatelessWidget {
  const _ScheduleTile({
    required this.time,
    required this.title,
  });

  final String time;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const CircleAvatar(
        child: Icon(Icons.schedule),
      ),
      title: Text(title),
      subtitle: Text(time),
    );
  }
}