import '../domain/entities/student.dart';

class StudentMockData {
  StudentMockData._();

  static final List<Student> students = [
    Student(
      id: '1',
      firstName: 'Juan',
      lastName: 'Dela Cruz',
      rank: 'Blue Belt',
      branch: 'Central',
      status: 'Active',
      gender: 'Male',
      joinedDate: DateTime(2024, 1, 12),
    ),

    Student(
      id: '2',
      firstName: 'Maria',
      lastName: 'Santos',
      rank: 'Red Belt',
      branch: 'Solana',
      status: 'Active',
      gender: 'Female',
      joinedDate: DateTime(2023, 8, 4),
    ),

    Student(
      id: '3',
      firstName: 'Michael',
      lastName: 'Reyes',
      rank: 'Black Belt',
      branch: 'Alcala',
      status: 'Active',
      gender: 'Male',
      joinedDate: DateTime(2021, 2, 18),
    ),

    Student(
      id: '4',
      firstName: 'Angela',
      lastName: 'Garcia',
      rank: 'Yellow Belt',
      branch: 'Enrile',
      status: 'Inactive',
      gender: 'Female',
      joinedDate: DateTime(2025, 4, 9),
    ),
  ];
}