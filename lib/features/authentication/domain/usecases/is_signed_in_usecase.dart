import '../repositories/auth_repository.dart';

class IsSignedInUseCase {
  const IsSignedInUseCase(this._repository);

  final AuthRepository _repository;

  Future<bool> call() {
    return _repository.isSignedIn();
  }
}