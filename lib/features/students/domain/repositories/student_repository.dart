import '../entities/student.dart';

abstract class StudentRepository {
  List<Student> getAllStudents();

  Student? getStudentById(String id);

  Future<void> addStudent(Student student);

  Future<void> updateStudent(Student student);

  Future<void> deleteStudent(String id);
}