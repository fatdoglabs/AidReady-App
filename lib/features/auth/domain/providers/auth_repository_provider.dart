import 'package:aid_ready/core/data/providers/local_storage_provider.dart';
import 'package:aid_ready/core/data/providers/network_service_provider.dart';
import 'package:aid_ready/features/auth/data/providers/auth_remote_source_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';
import '../../data/repository/auth_repository_impl.dart';
import '../repository/auth_repository.dart';

part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(
    AuthRepositoryRef ref, NetworkStatus networkStatus) {
  final nwService = ref.read(netwokServiceProvider);
  final remoteSource = ref.read(authRemoteDataSourceProvider(nwService));
  final localSource = ref.read(localSourceProvider);
  return AuthRepositoryImpl(
      status: networkStatus,
      remoteDataSource: remoteSource,
      localSource: localSource);
}
