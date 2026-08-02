import 'package:flutter/material.dart';

class StudentActionsMenu extends StatelessWidget {
  const StudentActionsMenu({
    super.key,
    required this.onView,
    required this.onEdit,
    required this.onDelete,
  });

  final VoidCallback onView;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      tooltip: 'Student Actions',
      icon: const Icon(Icons.more_vert),
      onSelected: (value) {
        switch (value) {
          case 'view':
            onView();
            break;

          case 'edit':
            onEdit();
            break;

          case 'delete':
            onDelete();
            break;
        }
      },
      itemBuilder: (context) => const [
        PopupMenuItem(
          value: 'view',
          child: ListTile(
            leading: Icon(Icons.visibility_outlined),
            title: Text('View Profile'),
            contentPadding: EdgeInsets.zero,
          ),
        ),
        PopupMenuItem(
          value: 'edit',
          child: ListTile(
            leading: Icon(Icons.edit_outlined),
            title: Text('Edit Student'),
            contentPadding: EdgeInsets.zero,
          ),
        ),
        PopupMenuItem(
          value: 'delete',
          child: ListTile(
            leading: Icon(
              Icons.delete_outline,
              color: Colors.red,
            ),
            title: Text(
              'Delete Student',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}