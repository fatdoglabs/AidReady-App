import 'package:aid_ready/core/data/providers/local_storage_provider.dart';
import 'package:aid_ready/core/data/providers/network_service_provider.dart';
import 'package:aid_ready/features/profile/data/providers/profile_info_remote_source_provider.dart';
import 'package:aid_ready/features/profile/domain/repository/profile_info_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';
import '../../data/repositories/profile_info_repository_impl.dart';

part 'profile_info_repository_provider.g.dart';

@riverpod
ProfileInfoRepository profileInfoRepository(
    ProfileInfoRepositoryRef ref, NetworkStatus networkStatus) {
  final nwService = ref.read(netwokServiceProvider);
  final remoteSource = ref.read(profileInfoRemoteSourceProvider(nwService));
  final localSource = ref.read(localSourceProvider);
  return ProfileInfoRepositoryImpl(
      status: networkStatus,
      remoteDataSource: remoteSource,
      localSource: localSource);
}
