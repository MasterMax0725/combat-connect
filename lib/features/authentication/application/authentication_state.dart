enum AuthenticationStatus {
  unknown,
  authenticated,
  unauthenticated,
  loading,
}

class AuthenticationState {
  const AuthenticationState({
    this.status = AuthenticationStatus.unknown,
    this.userId,
    this.email,
    this.displayName,
    this.errorMessage,
  });

  final AuthenticationStatus status;
  final String? userId;
  final String? email;
  final String? displayName;
  final String? errorMessage;

  AuthenticationState copyWith({
    AuthenticationStatus? status,
    String? userId,
    String? email,
    String? displayName,
    String? errorMessage,
  }) {
    return AuthenticationState(
      status: status ?? this.status,
      userId: userId ?? this.userId,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}