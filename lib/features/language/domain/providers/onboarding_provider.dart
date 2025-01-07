import 'package:aid_ready/features/language/data/model/onboarding_item.dart';
import 'package:aid_ready/features/language/domain/providers/onboarding_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';

part 'onboarding_provider.g.dart';

@riverpod
class Onboarding extends _$Onboarding {
  @override
  FutureOr<List<OnboardingItem>> build() {
    return [];
  }

  Future<void> getOnBoardingItems() async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(onboardingRepositoryProvider(networkStatus));

    final result = await repository.getOnboarding();
    result.fold((l) {
      state = AsyncData(l);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }
}
