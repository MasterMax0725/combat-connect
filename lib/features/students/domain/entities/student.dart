import 'package:flutter/material.dart';

class Student {
  const Student({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.rank,
    required this.branch,
    required this.status,
    required this.gender,
    required this.joinedDate,
    this.photoUrl,
  });

  final String id;
  final String firstName;
  final String lastName;

  final String rank;
  final String branch;

  final String status;

  final String gender;

  final DateTime joinedDate;

  final String? photoUrl;

  String get fullName => '$firstName $lastName';

  IconData get rankIcon {
    switch (rank.toLowerCase()) {
      case 'black belt':
        return Icons.workspace_premium;

      case 'red belt':
        return Icons.military_tech;

      case 'blue belt':
        return Icons.shield;

      default:
        return Icons.sports_martial_arts;
    }
  }

  Color get statusColor {
    switch (status.toLowerCase()) {
      case 'active':
        return Colors.green;

      case 'inactive':
        return Colors.orange;

      default:
        return Colors.grey;
    }
  }
}