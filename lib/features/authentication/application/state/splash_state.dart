enum SplashStatus {
  initial,
  loading,
  authenticated,
  unauthenticated,
  error,
}

class SplashState {
  final SplashStatus status;
  final String? message;

  const SplashState({
    required this.status,
    this.message,
  });

  const SplashState.initial()
      : status = SplashStatus.initial,
        message = null;

  SplashState copyWith({
    SplashStatus? status,
    String? message,
  }) {
    return SplashState(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }
}