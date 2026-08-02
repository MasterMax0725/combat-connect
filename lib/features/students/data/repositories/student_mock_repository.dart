import '../../domain/entities/student.dart';
import '../../domain/repositories/student_repository.dart';
import '../student_mock_data.dart';

class StudentMockRepository implements StudentRepository {
  StudentMockRepository();

  final List<Student> _students =
      List<Student>.from(StudentMockData.students);

  @override
  List<Student> getAllStudents() {
    return List<Student>.from(_students);
  }

  @override
  Student? getStudentById(String id) {
    try {
      return _students.firstWhere(
        (student) => student.id == id,
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> addStudent(Student student) async {
    _students.add(student);
  }

  @override
  Future<void> updateStudent(Student student) async {
    final index = _students.indexWhere(
      (element) => element.id == student.id,
    );

    if (index == -1) return;

    _students[index] = student;
  }

  @override
  Future<void> deleteStudent(String id) async {
    _students.removeWhere(
      (student) => student.id == id,
    );
  }
}