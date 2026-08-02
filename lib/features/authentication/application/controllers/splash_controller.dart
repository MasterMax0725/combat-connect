import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/auth_providers.dart';
import '../state/splash_state.dart';

final splashControllerProvider =
    StateNotifierProvider<SplashController, SplashState>(
  (ref) => SplashController(ref),
);

class SplashController extends StateNotifier<SplashState> {
  SplashController(this.ref) : super(const SplashState.initial());

  final Ref ref;

  Future<void> initialize() async {
    state = state.copyWith(
      status: SplashStatus.loading,
    );

    try {
      final isSignedIn =
          ref.read(isSignedInUseCaseProvider);

      final signedIn = await isSignedIn();

      state = state.copyWith(
        status: signedIn
            ? SplashStatus.authenticated
            : SplashStatus.unauthenticated,
      );
    } catch (e) {
      state = state.copyWith(
        status: SplashStatus.error,
        message: e.toString(),
      );
    }
  }
}