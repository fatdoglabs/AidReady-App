import 'package:aid_ready/features/profile/domain/entity/profile_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_step_provider.g.dart';

@riverpod
class ProfileStep extends _$ProfileStep {
  @override
  ProfileInfo build() {
    return ProfileInfo.empty();
  }

  void updateProfile(
      {String? imageUri,
      String? name,
      String? gender,
      String? dob,
      double? weight,
      String? bloodgroup,
      bool? dontKnow}) {
    ProfileInfo info = state;
    state = info.copyWith(
        pfpUrl: imageUri ?? info.pfpUrl,
        fullName: name ?? info.fullName,
        gender: gender ?? info.gender,
        dob: dob ?? info.dob,
        weight: weight ?? info.weight,
        bloodgroup: bloodgroup ?? info.bloodgroup,
        dontKnowBloodType: dontKnow ?? info.dontKnowBloodType);
  }
}
