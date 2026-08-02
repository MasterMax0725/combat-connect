import '../entities/user_entity.dart';

abstract class AuthRepository {
  /// Returns the currently signed-in user.
  Future<UserEntity?> getCurrentUser();

  /// Signs in using email and password.
  Future<UserEntity> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Creates a new account.
  Future<UserEntity> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Signs the current user out.
  Future<void> signOut();

  /// Sends a password reset email.
  Future<void> sendPasswordResetEmail(String email);

  /// Returns true if a user is currently signed in.
  Future<bool> isSignedIn();
}