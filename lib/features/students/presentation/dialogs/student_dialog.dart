import 'package:flutter/material.dart';

import '../../domain/entities/student.dart';

class StudentDialog extends StatefulWidget {
  const StudentDialog({
    super.key,
    this.student,
  });

  final Student? student;

  @override
  State<StudentDialog> createState() => _StudentDialogState();
}

class _StudentDialogState extends State<StudentDialog> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;

  late String _gender;
  late String _rank;
  late String _branch;

  bool get _isEdit => widget.student != null;

  @override
  void initState() {
    super.initState();

    _firstNameController = TextEditingController(
      text: widget.student?.firstName ?? '',
    );

    _lastNameController = TextEditingController(
      text: widget.student?.lastName ?? '',
    );

    _gender = widget.student?.gender ?? 'Male';
    _rank = widget.student?.rank ?? 'White Belt';
    _branch = widget.student?.branch ?? 'Central';
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  void _save() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final student = Student(
      id: widget.student?.id ??
          DateTime.now().millisecondsSinceEpoch.toString(),
      firstName: _firstNameController.text.trim(),
      lastName: _lastNameController.text.trim(),
      rank: _rank,
      branch: _branch,
      status: widget.student?.status ?? 'Active',
      gender: _gender,
      joinedDate: widget.student?.joinedDate ?? DateTime.now(),
      photoUrl: widget.student?.photoUrl,
    );

    Navigator.pop(context, student);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        _isEdit ? 'Edit Student' : 'Add Student',
      ),
      content: SizedBox(
        width: 480,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'First name is required';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                TextFormField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Last name is required';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                DropdownButtonFormField<String>(
                  initialValue: _gender,
                  decoration: const InputDecoration(
                    labelText: 'Gender',
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'Male',
                      child: Text('Male'),
                    ),
                    DropdownMenuItem(
                      value: 'Female',
                      child: Text('Female'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value == null) return;
                    setState(() {
                      _gender = value;
                    });
                  },
                ),

                const SizedBox(height: 16),

                DropdownButtonFormField<String>(
                  initialValue: _rank,
                  decoration: const InputDecoration(
                    labelText: 'Belt Rank',
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'White Belt',
                      child: Text('White Belt'),
                    ),
                    DropdownMenuItem(
                      value: 'Yellow Belt',
                      child: Text('Yellow Belt'),
                    ),
                    DropdownMenuItem(
                      value: 'Blue Belt',
                      child: Text('Blue Belt'),
                    ),
                    DropdownMenuItem(
                      value: 'Red Belt',
                      child: Text('Red Belt'),
                    ),
                    DropdownMenuItem(
                      value: 'Black Belt',
                      child: Text('Black Belt'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value == null) return;
                    setState(() {
                      _rank = value;
                    });
                  },
                ),

                const SizedBox(height: 16),

                DropdownButtonFormField<String>(
                  initialValue: _branch,
                  decoration: const InputDecoration(
                    labelText: 'Branch',
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'Central',
                      child: Text('Central'),
                    ),
                    DropdownMenuItem(
                      value: 'Solana',
                      child: Text('Solana'),
                    ),
                    DropdownMenuItem(
                      value: 'Alcala',
                      child: Text('Alcala'),
                    ),
                    DropdownMenuItem(
                      value: 'Enrile',
                      child: Text('Enrile'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value == null) return;
                    setState(() {
                      _branch = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        FilledButton.icon(
          onPressed: _save,
          icon: Icon(
            _isEdit ? Icons.save : Icons.person_add,
          ),
          label: Text(
            _isEdit ? 'Save Changes' : 'Add Student',
          ),
        ),
      ],
    );
  }
}