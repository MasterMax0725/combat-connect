import 'package:flutter/material.dart';

import '../../../../core/widgets/cc_side_panel.dart';
import '../../domain/entities/student.dart';
import 'student_actions_menu.dart';
import 'student_profile_drawer.dart';

class StudentTable extends StatelessWidget {
  const StudentTable({
    super.key,
    required this.students,
  });

  final List<Student> students;

  void _openProfile(
    BuildContext context,
    Student student,
  ) {
    CCSidePanel.show(
      context,
      title: student.fullName,
      child: StudentProfileDrawer(
        student: student,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(
          color: Colors.grey.shade300,
        ),
      ),
      child: SingleChildScrollView(
        child: DataTable(
          headingRowHeight: 56,
          dataRowMinHeight: 68,
          dataRowMaxHeight: 72,
          columnSpacing: 28,
          columns: const [
            DataColumn(label: Text('Student')),
            DataColumn(label: Text('Belt')),
            DataColumn(label: Text('Branch')),
            DataColumn(label: Text('Status')),
            DataColumn(label: Text('Joined')),
            DataColumn(label: Text('Actions')),
          ],
          rows: students.map((student) {
            return DataRow(
              onSelectChanged: (_) {
                _openProfile(context, student);
              },
              cells: [
                DataCell(
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.red.shade50,
                        child: Icon(
                          student.rankIcon,
                          color: Colors.red,
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          student.fullName,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),

                DataCell(Text(student.rank)),

                DataCell(Text(student.branch)),

                DataCell(
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: student.statusColor.withValues(alpha: .10),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      student.status,
                      style: TextStyle(
                        color: student.statusColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                DataCell(
                  Text(
                    '${student.joinedDate.month}/${student.joinedDate.day}/${student.joinedDate.year}',
                  ),
                ),

                DataCell(
                  StudentActionsMenu(
                    onView: () => _openProfile(context, student),
                    onEdit: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Edit Student - Coming Soon'),
                        ),
                      );
                    },
                    onDelete: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Delete Student - Coming Soon'),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}