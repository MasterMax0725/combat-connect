import '../entities/user_entity.dart';

abstract interface class AuthRepository {
  Future<UserEntity?> getCurrentUser();

  Future<UserEntity> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserEntity> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<void> sendPasswordResetEmail(String email);

  Future<bool> isSignedIn();
}