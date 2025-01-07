import 'package:aid_ready/features/language/data/datasource/onboarding_remote_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/network_service.dart';

part 'onboarding_remote_source_provider.g.dart';

@riverpod
OnboardingRemoteDataSource onboardingRemoteDataSource(
        OnboardingRemoteDataSourceRef ref, NetworkService service) =>
    OnboardingRemoteDataSourceImpl(service);
