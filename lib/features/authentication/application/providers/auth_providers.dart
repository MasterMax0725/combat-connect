import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/firebase_auth_datasource.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/get_current_user_usecase.dart';
import '../../domain/usecases/is_signed_in_usecase.dart';
import '../../domain/usecases/send_password_reset_usecase.dart';
import '../../domain/usecases/sign_in_usecase.dart';
import '../../domain/usecases/sign_out_usecase.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final firebaseAuthDatasourceProvider =
    Provider<FirebaseAuthDatasource>((ref) {
  return FirebaseAuthDatasource(
    ref.watch(firebaseAuthProvider),
  );
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(
    ref.watch(firebaseAuthDatasourceProvider),
  );
});

final getCurrentUserUseCaseProvider =
    Provider<GetCurrentUserUseCase>((ref) {
  return GetCurrentUserUseCase(
    ref.watch(authRepositoryProvider),
  );
});

final isSignedInUseCaseProvider =
    Provider<IsSignedInUseCase>((ref) {
  return IsSignedInUseCase(
    ref.watch(authRepositoryProvider),
  );
});

final signInUseCaseProvider =
    Provider<SignInUseCase>((ref) {
  return SignInUseCase(
    ref.watch(authRepositoryProvider),
  );
});

final signOutUseCaseProvider =
    Provider<SignOutUseCase>((ref) {
  return SignOutUseCase(
    ref.watch(authRepositoryProvider),
  );
});

final sendPasswordResetUseCaseProvider =
    Provider<SendPasswordResetUseCase>((ref) {
  return SendPasswordResetUseCase(
    ref.watch(authRepositoryProvider),
  );
});