import 'package:aid_ready/features/profile/domain/entity/profile_info.dart';
import 'package:aid_ready/features/profile/domain/providers/profile_info_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';

part 'profile_update_provider.g.dart';

@riverpod
class ProfileUpdate extends _$ProfileUpdate {
  @override
  FutureOr<ProfileInfo> build() async {
    return ProfileInfo.empty();
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
