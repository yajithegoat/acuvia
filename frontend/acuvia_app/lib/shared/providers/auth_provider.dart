import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../../core/http_client.dart';
import '../../../data/repositories/auth_repository.dart';

final authStateProvider =
    StateNotifierProvider<AuthController, AsyncValue<void>>(AuthController.new);

class AuthController extends StateNotifier<AsyncValue<void>> {
  AuthController(this._ref) : super(const AsyncValue.data(null));
  final Ref _ref;

  Future<bool> login(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final token = await _ref
          .read(authRepositoryProvider)
          .login(email, password);
      _ref.read(authTokenProvider.notifier).state = token;
      state = const AsyncValue.data(null);
      return true;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return false;
    }
  }

  Future<bool> register(
    String email,
    String password, {
    String? fullName,
  }) async {
    state = const AsyncValue.loading();
    try {
      final token = await _ref
          .read(authRepositoryProvider)
          .register(email, password, fullName: fullName);
      _ref.read(authTokenProvider.notifier).state = token;
      state = const AsyncValue.data(null);
      return true;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return false;
    }
  } // <-- This is the bracket I moved to close out the register function!

  /// Placeholder Google sign-in flow. Integrate `google_sign_in` or
  /// your platform-specific implementation and exchange the provider token
  /// with your backend to retrieve an auth token.
  Future<bool> signInWithGoogle() async {
    state = const AsyncValue.loading();
    try {
      // TODO: replace this placeholder with a real Google Sign-In flow.
      // For now, we emulate a failure so callers can handle the result.
      await Future.delayed(const Duration(milliseconds: 500));
      state = const AsyncValue.data(null);
      return false;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return false;
    }
  }

  void logout() {
    _ref.read(authTokenProvider.notifier).state = null;
  }
}