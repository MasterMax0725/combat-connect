import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/firebase_auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._datasource);

  final FirebaseAuthDatasource _datasource;

  @override
  Future<UserEntity?> getCurrentUser() async {
    final user = _datasource.currentUser;

    if (user == null) {
      return null;
    }

    return UserEntity(
      id: user.uid,
      email: user.email ?? '',
      displayName: user.displayName,
      photoUrl: user.photoURL,
    );
  }

  @override
  Future<UserEntity> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final credential = await _datasource.signIn(
      email: email,
      password: password,
    );

    final user = credential.user!;

    return UserEntity(
      id: user.uid,
      email: user.email ?? '',
      displayName: user.displayName,
      photoUrl: user.photoURL,
    );
  }

  @override
  Future<UserEntity> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final credential = await _datasource.register(
      email: email,
      password: password,
    );

    final user = credential.user!;

    return UserEntity(
      id: user.uid,
      email: user.email ?? '',
      displayName: user.displayName,
      photoUrl: user.photoURL,
    );
  }

  @override
  Future<void> signOut() {
    return _datasource.signOut();
  }

  @override
  Future<void> sendPasswordResetEmail(String email) {
    return _datasource.sendPasswordResetEmail(email);
  }

  @override
  Future<bool> isSignedIn() async {
    return _datasource.currentUser != null;
  }
}