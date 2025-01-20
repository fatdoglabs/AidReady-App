import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/auth/data/model/auth_token.dart';
import 'package:aid_ready/features/auth/presentation/providers/auth_provider.dart';
import 'package:aid_ready/features/profile/domain/providers/profile_step_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'next_page_provider.g.dart';

@riverpod
class NextPage extends _$NextPage {
  @override
  int build() {
    final authToken = ref.read(authProvider).whenOrNull(data: (data) => data) ??
        AuthToken.unauthenticated();
    if (authToken.isPhysicalInfoCompleted) {
      return 2;
    }
    if (authToken.isPersonalInfoCompleted) {
      return 1;
    }
    return 0;
  }

  void update(int index) {
    final step = ref.read(profileStepProvider);
    if (index == 0) {
      if (step.name.isNotNullNotEmpty && step.image.isNotNullNotEmpty) {
        state = 0;
      }
    }
    if (index == 1) {
      if (step.gender.isNotNullNotEmpty &&
          step.dob.isNotNullNotEmpty &&
          step.weight != 0.0) {
        state = 1;
      }
    }
  }
}
