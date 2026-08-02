import 'package:flutter/material.dart';

import '../../domain/entities/student.dart';

class StudentProfileDrawer extends StatelessWidget {
  const StudentProfileDrawer({
    super.key,
    required this.student,
  });

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff8f9fb),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 54,
              backgroundColor: Colors.red.shade50,
              child: Icon(
                student.rankIcon,
                size: 54,
                color: Colors.red,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              student.fullName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              student.rank,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              student.branch,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 28),

            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    label: const Text("Edit"),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.fact_check),
                    label: const Text("Attendance"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.payments),
                label: const Text("Payments"),
              ),
            ),

            const SizedBox(height: 28),

            _SectionCard(
              title: "Student Information",
              icon: Icons.person_outline,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: _InfoTile(
                          label: "Branch",
                          value: student.branch,
                        ),
                      ),
                      Expanded(
                        child: _InfoTile(
                          label: "Status",
                          value: student.status,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      Expanded(
                        child: _InfoTile(
                          label: "Gender",
                          value: student.gender,
                        ),
                      ),
                      Expanded(
                        child: _InfoTile(
                          label: "Joined",
                          value:
                              "${student.joinedDate.month}/${student.joinedDate.day}/${student.joinedDate.year}",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const _ComingSoonCard(
              icon: Icons.family_restroom_outlined,
              title: "Guardian",
            ),

            const SizedBox(height: 16),

            const _ComingSoonCard(
              icon: Icons.fact_check_outlined,
              title: "Attendance",
            ),

            const SizedBox(height: 16),

            const _ComingSoonCard(
              icon: Icons.payments_outlined,
              title: "Payments",
            ),

            const SizedBox(height: 16),

            const _ComingSoonCard(
              icon: Icons.workspace_premium_outlined,
              title: "Promotion History",
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.icon,
    required this.child,
  });

  final String title;
  final IconData icon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(
          color: Colors.grey.shade300,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            child,
          ],
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: TextStyle(
            fontSize: 12,
            letterSpacing: 1,
            color: Colors.grey.shade600,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _ComingSoonCard extends StatelessWidget {
  const _ComingSoonCard({
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(
          color: Colors.grey.shade300,
        ),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text("Coming Soon"),
      ),
    );
  }
}