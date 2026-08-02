import 'package:flutter/material.dart';

import '../../../../core/navigation/app_shell.dart';
import '../../../../core/widgets/cc_search_bar.dart';
import '../../data/student_mock_data.dart';
import '../widgets/student_card.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppShell(
      title: 'Students',
      selectedRoute: '/students',
      child: _StudentsContent(),
    );
  }
}

class _StudentsContent extends StatelessWidget {
  const _StudentsContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Students',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.person_add),
                label: const Text('New Student'),
              ),
            ],
          ),

          const SizedBox(height: 24),

          const CCSearchBar(
            hintText: 'Search students...',
          ),

          const SizedBox(height: 24),

          Expanded(
            child: ListView.separated(
              itemCount: StudentMockData.students.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 14),
              itemBuilder: (context, index) {
                return StudentCard(
                  student: StudentMockData.students[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}