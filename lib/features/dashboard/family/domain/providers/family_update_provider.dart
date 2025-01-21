import 'package:aid_ready/core/data/providers/connectivity_status_notifier.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
import 'package:aid_ready/features/dashboard/family/domain/providers/family_provider.dart';
import 'package:aid_ready/features/dashboard/family/domain/providers/family_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'family_update_provider.g.dart';

@riverpod
class FamilyUpdate extends _$FamilyUpdate {
  @override
  FutureOr<bool> build() async {
    return true;
  }

  Future<void> addMember(FamilyMember member) async {
    state = const AsyncLoading();
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(familyRepositoryProvider(networkStatus));
    final result = await repository.addMember(member);
    result.fold((l) {
      ref.read(familyProvider.notifier).updateList(l);
      state = const AsyncData(true);
    }, (r) {
      state = AsyncError(r, StackTrace.current);
    });
  }
}
