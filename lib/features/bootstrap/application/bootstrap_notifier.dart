import 'package:flutter_riverpod/flutter_riverpod.dart';

enum BootstrapState {
  loading,
  onboarding,
  dashboard,
}

final bootstrapNotifierProvider =
    NotifierProvider<BootstrapNotifier, BootstrapState>(
  BootstrapNotifier.new,
);

class BootstrapNotifier extends Notifier<BootstrapState> {
  @override
  BootstrapState build() {
    initialize();
    return BootstrapState.loading;
  }

  Future<void> initialize() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    final academyExists = await _academyExists();

    state = academyExists
        ? BootstrapState.dashboard
        : BootstrapState.onboarding;
  }

  Future<bool> _academyExists() async {
    // TODO: Replace with Firebase lookup.
    return false;
  }
}