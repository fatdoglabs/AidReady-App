import 'package:aid_ready/features/auth/data/model/auth_token.dart';
import 'package:aid_ready/features/profile/domain/entity/profile_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../auth/presentation/providers/auth_provider.dart';

part 'profile_step_provider.g.dart';

@riverpod
class ProfileStep extends _$ProfileStep {
  @override
  ProfileInfo build() {
    final authToken = ref.read(authProvider).whenOrNull(data: (data) => data) ??
        AuthToken.unauthenticated();
    final info = ProfileInfo(
      image: authToken.image,
      name: authToken.name,
      bloodGroup: authToken.bloodGroup,
      weight: authToken.weight,
      dob: authToken.dob,
      gender: authToken.gender,
    );
    return info;
  }

  void updateProfile(
      {String? imageUri,
      String? name,
      String? gender,
      String? dob,
      double? weight}) {
    ProfileInfo info = state;
    state = info.copyWith(
      image: imageUri ?? info.image,
      name: name ?? info.name,
      gender: gender ?? info.gender,
      dob: dob ?? info.dob,
      weight: weight ?? info.weight,
    );
  }

  void selectBloodGroup(String bloodGroup) {
    state = state.copyWith(bloodGroup: bloodGroup, dontKnowBloodType: false);
  }

  void dontKnowType() {
    if (state.dontKnowBloodType != null && state.dontKnowBloodType == true) {
      return;
    }
    state = state.copyWith(bloodGroup: null, dontKnowBloodType: true);
  }

  bool hasUserProvidedMedicalInfo() {
    return state.dontKnowBloodType == null && state.bloodGroup == null;
  }
}
