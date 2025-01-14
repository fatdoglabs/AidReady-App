import 'package:aid_ready/features/auth/data/model/otp_token.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';
import '../../domain/entity/auth_form_entity.dart';
import '../../domain/providers/auth_repository_provider.dart';

part 'email_otp_provider.g.dart';

@riverpod
class EmailOtp extends _$EmailOtp {
  @override
  FutureOr<OtpToken> build() async {
    return OtpToken.unauthenticated();
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
}
