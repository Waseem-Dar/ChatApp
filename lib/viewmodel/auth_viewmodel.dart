import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/auth_provider.dart';
import '../services/firebase_services.dart';

class AuthStateNotifier extends StateNotifier<AsyncValue<void>> {
  final AuthService _authService;

  AuthStateNotifier(this._authService) : super(const AsyncValue.data(null));

  Future<void> signIn(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      await _authService.signIn(email, password);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e,StackTrace. current);
    }
  }

  Future<void> signUp(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      await _authService.signUp(email, password);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e,StackTrace. current);
    }
  }
}

final authNotifierProvider =
StateNotifierProvider<AuthStateNotifier, AsyncValue<void>>(
      (ref) => AuthStateNotifier(ref.watch(authServiceProvider)),
);
