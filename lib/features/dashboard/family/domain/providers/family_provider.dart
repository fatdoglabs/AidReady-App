import 'package:aid_ready/core/data/providers/connectivity_status_notifier.dart';
import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
import 'package:aid_ready/features/dashboard/family/domain/providers/family_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'family_provider.g.dart';

@riverpod
class Family extends _$Family {
  @override
  Future<List<FamilyMember>> build() async {
    final networkStatus = await ref
        .read(networkStatusNotifierProvider.notifier)
        .hasInternetAccess();
    final repository = ref.read(familyRepositoryProvider(networkStatus));
    try {
      final result = await repository.famiyMembers();
      return result.fold((data) {
        return data;
      }, (e) {
        throw e;
      });
    } on AppException {
      rethrow;
    }
  }

  void updateList(FamilyMember member) {
    final current = state.whenOrNull(
          data: (list) => list,
        ) ??
        [];
    final newList = [member, ...current];
    state = AsyncData(newList);
  }
}
