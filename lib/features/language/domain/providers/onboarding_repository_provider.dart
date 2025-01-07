import 'package:aid_ready/features/language/data/provider/onboarding_remote_source_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';
import '../../../../core/data/providers/network_service_provider.dart';
import '../../data/repository/onboarding_repository_impl.dart';
import '../repository/onboarding_repository.dart';

part 'onboarding_repository_provider.g.dart';

@riverpod
OnboardingRepository onboardingRepository(
    OnboardingRepositoryRef ref, NetworkStatus networkStatus) {
  final nwService = ref.read(netwokServiceProvider);
  final remoteSource = ref.read(onboardingRemoteDataSourceProvider(nwService));
  return OnboardingRepositoryImpl(
    status: networkStatus,
    remoteDataSource: remoteSource,
  );
}
