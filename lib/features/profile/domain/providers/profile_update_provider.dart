import 'package:aid_ready/features/auth/data/model/auth_token.dart';
import 'package:aid_ready/features/auth/presentation/providers/auth_provider.dart';
import 'package:aid_ready/features/profile/domain/entity/profile_info.dart';
import 'package:aid_ready/features/profile/domain/providers/profile_info_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';

part 'profile_update_provider.g.dart';

@riverpod
class ProfileUpdate extends _$ProfileUpdate {
  @override
  FutureOr<ProfileInfo> build() async {
    final authToken = ref.read(authProvider).whenOrNull(data: (data) => data) ??
        AuthToken.unauthenticated();
    final info = ProfileInfo(
      image: authToken.image,
      name: authToken.name,
      weight: authToken.weight,
      dob: authToken.dob,
      gender: authToken.gender,
    );
    return info;
  }

  Future<void> updatePersonalInfo(ProfileInfo info) async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(profileInfoRepositoryProvider(networkStatus));
    final result = await repository.updatePersonalInfo(info);
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }

  Future<void> updatePhysicalInfo(ProfileInfo info) async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(profileInfoRepositoryProvider(networkStatus));
    final result = await repository.updatePhysicalInfo(info);
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }

  Future<void> updateMedicalInfo(ProfileInfo info) async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(profileInfoRepositoryProvider(networkStatus));
    final result = await repository.updateMedicalInfo(info);
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }
}
