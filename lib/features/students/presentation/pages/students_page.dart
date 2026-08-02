import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/navigation/app_shell.dart';
import '../../application/providers/student_provider.dart';
import '../../domain/entities/student.dart';
import '../dialogs/student_dialog.dart';
import '../widgets/student_filters.dart';
import '../widgets/student_search_bar.dart';
import '../widgets/student_table.dart';

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

class _StudentsContent extends ConsumerStatefulWidget {
  const _StudentsContent();

  @override
  ConsumerState<_StudentsContent> createState() =>
      _StudentsContentState();
}

class _StudentsContentState
    extends ConsumerState<_StudentsContent> {
  final TextEditingController _searchController =
      TextEditingController();

  List<Student> _filteredStudents = [];

  @override
  void initState() {
    super.initState();
    _filteredStudents =
        List<Student>.from(ref.read(studentsProvider));
  }

  Future<void> _addStudent() async {
    final Student? student =
        await showDialog<Student>(
      context: context,
      builder: (_) => const StudentDialog(),
    );

    if (student == null) return;

    await ref
        .read(studentsProvider.notifier)
        .add(student);

    _search(_searchController.text);

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Student added successfully.',
        ),
      ),
    );
  }

  void _search(String value) {
    final students = ref.read(studentsProvider);

    if (value.trim().isEmpty) {
      setState(() {
        _filteredStudents =
            List<Student>.from(students);
      });
      return;
    }

    final query = value.toLowerCase();

    setState(() {
      _filteredStudents =
          students.where((student) {
        return student.fullName
                .toLowerCase()
                .contains(query) ||
            student.rank
                .toLowerCase()
                .contains(query) ||
            student.branch
                .toLowerCase()
                .contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final students =
        ref.watch(studentsProvider);

    if (_searchController.text.isEmpty) {
      _filteredStudents =
          List<Student>.from(students);
    }

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Students',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${_filteredStudents.length} Students',
                      style: TextStyle(
                        color:
                            Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              FilledButton.icon(
                onPressed: _addStudent,
                icon: const Icon(
                  Icons.person_add,
                ),
                label:
                    const Text('New Student'),
              ),
            ],
          ),

          const SizedBox(height: 24),

          StudentSearchBar(
            controller:
                _searchController,
            onChanged: _search,
          ),

          const SizedBox(height: 20),

          const StudentFilters(),

          const SizedBox(height: 24),

          Expanded(
            child:
                _filteredStudents.isEmpty
                    ? const Center(
                        child: Text(
                          'No students found.',
                        ),
                      )
                    : StudentTable(
                        students:
                            _filteredStudents,
                      ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}