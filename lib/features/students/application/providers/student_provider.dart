import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/student_mock_repository.dart';
import '../../domain/entities/student.dart';
import '../../domain/repositories/student_repository.dart';

final studentRepositoryProvider = Provider<StudentRepository>((ref) {
  return StudentMockRepository();
});

final studentsProvider = StateNotifierProvider<
    StudentsNotifier, List<Student>>((ref) {
  return StudentsNotifier(
    ref.read(studentRepositoryProvider),
  );
});

class StudentsNotifier extends StateNotifier<List<Student>> {
  StudentsNotifier(this._repository)
      : super(_repository.getAllStudents());

  final StudentRepository _repository;

  void refresh() {
    state = _repository.getAllStudents();
  }

  Future<void> add(Student student) async {
    await _repository.addStudent(student);
    refresh();
  }

  Future<void> update(Student student) async {
    await _repository.updateStudent(student);
    refresh();
  }

  Future<void> delete(String id) async {
    await _repository.deleteStudent(id);
    refresh();
  }
}