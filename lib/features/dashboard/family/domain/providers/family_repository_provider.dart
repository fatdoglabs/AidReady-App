import 'package:aid_ready/core/data/providers/connectivity_status_notifier.dart';
import 'package:aid_ready/core/data/providers/local_storage_provider.dart';
import 'package:aid_ready/core/data/providers/network_service_provider.dart';
import 'package:aid_ready/features/dashboard/family/data/providers/family_remote_source_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository/family_repository_impl.dart';
import '../repository/family_repository.dart';

part 'family_repository_provider.g.dart';

@riverpod
FamilyRepository familyRepository(
    FamilyRepositoryRef ref, NetworkStatus networkStatus) {
  final nwService = ref.read(netwokServiceProvider);
  final remoteSource = ref.read(familyRemoteSourceProvider(nwService));
  final localSource = ref.read(localSourceProvider);
  return FamilyRepositoryImpl(
      status: networkStatus,
      remoteDataSource: remoteSource,
      localSource: localSource);
}
