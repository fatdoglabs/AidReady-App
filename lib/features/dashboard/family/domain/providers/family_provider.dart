import 'package:aid_ready/core/data/providers/connectivity_status_notifier.dart';
import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/features/auth/data/model/auth_token.dart';
import 'package:aid_ready/features/auth/presentation/providers/auth_provider.dart';
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

  List<FamilyMember> getAllFamilyMembers() {
    List<FamilyMember> current = state.whenOrNull(
          data: (list) => list,
        ) ??
        [];
    final authToken = ref.read(authProvider).whenOrNull(
              data: (data) => data,
            ) ??
        AuthToken.unauthenticated();
    final userMember = FamilyMember(
      bloodGroup: authToken.bloodGroup,
      dob: authToken.dob,
      image: authToken.image,
      gender: authToken.gender,
      isRegisteredAsDonor: authToken.bloodGroup.isNotEmpty,
      name: authToken.name,
      relation: "Own",
      weight: authToken.weight.toInt(),
    );

    return [userMember, ...current];
  }

  FamilyMember? getRecentFamilyMember() {
    List<FamilyMember> current = state.whenOrNull(
          data: (list) => list,
        ) ??
        [];
    if (current.isNotEmpty) return current.first;
    return null;
  }

  void updateList(FamilyMember member) {
    List<FamilyMember> current = state.whenOrNull(
          data: (list) => list,
        ) ??
        [];
    final existingMemberIndex =
        current.indexWhere((item) => item.id == member.id);
    if (existingMemberIndex == -1) {
      state = AsyncData([member, ...current]);
    } else {
      current.removeAt(existingMemberIndex);
      current.insert(existingMemberIndex, member);
      state = AsyncData([...current]);
    }
  }

  void markProfileComplete(FamilyMember member) {
    List<FamilyMember> current = state.whenOrNull(
          data: (list) => list,
        ) ??
        [];
    final existingMemberIndex =
        current.indexWhere((item) => item.id == member.id);
    if (existingMemberIndex == -1) {
      state = AsyncData([member, ...current]);
    } else {
      current.removeAt(existingMemberIndex);
      current.insert(existingMemberIndex, member);
      state = AsyncData([...current]);
    }
  }
}
