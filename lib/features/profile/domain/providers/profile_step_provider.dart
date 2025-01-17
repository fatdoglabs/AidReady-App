import 'package:aid_ready/features/profile/domain/entity/profile_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
    ProfileInfo info = state.whenOrNull(
          data: (data) => data,
        ) ??
        ProfileInfo.empty();
    state = AsyncData(info.copyWith(
        pfpUrl: imageUri ?? info.pfpUrl,
        fullName: name ?? info.fullName,
        gender: gender ?? info.gender,
        dob: dob ?? info.dob,
        weight: weight ?? info.weight,
        bloodgroup: bloodgroup ?? info.bloodgroup,
        dontKnowBloodType: bloodgroup == null));
  }
}
