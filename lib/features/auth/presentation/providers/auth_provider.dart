import 'package:aid_ready/features/auth/data/model/auth_token.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';
import '../../../../core/domain/entity/locale_option.dart';
import '../../domain/entity/auth_form_entity.dart';
import '../../domain/providers/auth_repository_provider.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  FutureOr<AuthToken> build() async {
    final isLocaleSet = await _isLocaleSet();
    final isOnboardingComplete = await _isOnboardingComplete();
    final token = await _isUserLoggedIn();
    if (token.accessToken.isNotEmpty && token.refreshToken.isNotEmpty) {
      return token.copyWith(isLocaleSet: true, isOnboardingComplete: true);
    } else {
      return AuthToken.unauthenticated(
          isLocaleSet: isLocaleSet, isOnboardingComplete: isOnboardingComplete);
    }
  }

  Future<void> login(AuthFormEntity authData) async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    final result = await repository.login(authData);
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }

  Future<void> signUp(AuthFormEntity authData) async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    final result = await repository.signUp(authData);
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }

  Future<void> reset(AuthFormEntity authData) async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    final result = await repository.reset(authData);
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }

  Future<void> verify(AuthFormEntity authData) async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    final result = await repository.verify(authData);
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }

  Future<void> resend(AuthFormEntity authData) async {
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    final result = await repository.resend(authData);
    result.fold((l) {
      //state = AsyncData(l);
    }, (r) {
      throw r;
    });
  }

  Future<void> googleLogin() async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    final result = await repository.googleLogin();
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }

  Future<void> setLocale(LocaleOpts locale) async {
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    repository.setLocale(locale);
  }

  Future<void> onboardingComplete() async {
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    repository.onboardingComplete();
  }

  Future<AuthToken> _isUserLoggedIn() async {
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    return repository.isUserLoggedIn();
  }

  Future<int> getCurrentUserId() async {
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    final token = repository.isUserLoggedIn();
    return 1;
  }

  Future<bool> _isLocaleSet() async {
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    return repository.isLocaleSet();
  }

  Future<bool> _isOnboardingComplete() async {
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(authRepositoryProvider(networkStatus));
    return repository.isOnboardingComplete();
  }
}
