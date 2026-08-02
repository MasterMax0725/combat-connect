import 'package:flutter/material.dart';

class StudentFilters extends StatelessWidget {
  const StudentFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          _FilterChip(label: 'All', selected: true),
          SizedBox(width: 12),
          _FilterChip(label: 'Active'),
          SizedBox(width: 12),
          _FilterChip(label: 'Inactive'),
          SizedBox(width: 12),
          _FilterChip(label: 'White Belt'),
          SizedBox(width: 12),
          _FilterChip(label: 'Yellow Belt'),
          SizedBox(width: 12),
          _FilterChip(label: 'Blue Belt'),
          SizedBox(width: 12),
          _FilterChip(label: 'Red Belt'),
          SizedBox(width: 12),
          _FilterChip(label: 'Black Belt'),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    this.selected = false,
  });

  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      selected: selected,
      showCheckmark: false,
      label: Text(label),
      onSelected: (_) {},
    );
  }
}