import 'package:aid_ready/features/auth/data/model/auth_token.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../auth/presentation/providers/auth_provider.dart';

part 'blood_request_provider.g.dart';

@riverpod
class BloodRequest extends _$BloodRequest {
  @override
  FamilyMember build() {
    final authToken = ref.read(authProvider).whenOrNull(
              data: (data) => data,
            ) ??
        AuthToken.unauthenticated();
    return FamilyMember(
      bloodGroup: authToken.bloodGroup,
      dob: authToken.dob,
      image: authToken.image,
      gender: authToken.gender,
      isRegisteredAsDonor: authToken.bloodGroup.isNotEmpty,
      name: authToken.name,
      relation: "Own",
      weight: authToken.weight.toInt(),
    );
  }

  void updateSelectedMember(FamilyMember member) {
    state = member;
  }
}
