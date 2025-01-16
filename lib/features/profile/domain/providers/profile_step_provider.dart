import 'package:aid_ready/features/profile/domain/entity/profile_info.dart';
import 'package:aid_ready/features/profile/domain/providers/profile_info_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';

part 'profile_step_provider.g.dart';

@riverpod
class ProfileStep extends _$ProfileStep {
  @override
  FutureOr<ProfileInfo> build() async {
    return ProfileInfo.empty();
  }

  void updateProfile(
      {String? imageUri,
      String? name,
      String? gender,
      String? dob,
      double? weight,
      String? bloodgroup}) {
    ProfileInfo info = state.whenOrNull() ?? ProfileInfo.empty();
    state = AsyncData(info.copyWith(
      pfpUrl: imageUri ?? "",
      fullName: name ?? "",
      gender: gender,
      dob: dob ?? "",
      weight: weight,
      bloodgroup: bloodgroup,
      dontKnowBloodType: bloodgroup == null
    ));
  }

  Future<void> updatePersonalInfo(String imageUrl, String fullName) async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(profileInfoRepositoryProvider(networkStatus));
    final result = await repository.updatePersonalInfo(ProfileInfo());
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }

  Future<void> updatePhysicalInfo(String imageUrl, String fullName) async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(profileInfoRepositoryProvider(networkStatus));
    final result = await repository.updatePhysicalInfo(ProfileInfo());
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }

  Future<void> updateMedicalInfo(String imageUrl, String fullName) async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(profileInfoRepositoryProvider(networkStatus));
    final result = await repository.updateMedicalInfo(ProfileInfo());
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }
}
