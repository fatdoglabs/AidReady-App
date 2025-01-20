import 'package:aid_ready/features/auth/data/model/auth_token.dart';
import 'package:aid_ready/features/auth/presentation/providers/auth_provider.dart';
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
    state = index;
  }
}
