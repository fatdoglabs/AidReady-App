// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onboardingRepositoryHash() =>
    r'1b0bc525893f13b641a78d552e3432d8315678df';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [onboardingRepository].
@ProviderFor(onboardingRepository)
const onboardingRepositoryProvider = OnboardingRepositoryFamily();

/// See also [onboardingRepository].
class OnboardingRepositoryFamily extends Family<OnboardingRepository> {
  /// See also [onboardingRepository].
  const OnboardingRepositoryFamily();

  /// See also [onboardingRepository].
  OnboardingRepositoryProvider call(
    NetworkStatus networkStatus,
  ) {
    return OnboardingRepositoryProvider(
      networkStatus,
    );
  }

  @override
  OnboardingRepositoryProvider getProviderOverride(
    covariant OnboardingRepositoryProvider provider,
  ) {
    return call(
      provider.networkStatus,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'onboardingRepositoryProvider';
}

/// See also [onboardingRepository].
class OnboardingRepositoryProvider
    extends AutoDisposeProvider<OnboardingRepository> {
  /// See also [onboardingRepository].
  OnboardingRepositoryProvider(
    NetworkStatus networkStatus,
  ) : this._internal(
          (ref) => onboardingRepository(
            ref as OnboardingRepositoryRef,
            networkStatus,
          ),
          from: onboardingRepositoryProvider,
          name: r'onboardingRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$onboardingRepositoryHash,
          dependencies: OnboardingRepositoryFamily._dependencies,
          allTransitiveDependencies:
              OnboardingRepositoryFamily._allTransitiveDependencies,
          networkStatus: networkStatus,
        );

  OnboardingRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.networkStatus,
  }) : super.internal();

  final NetworkStatus networkStatus;

  @override
  Override overrideWith(
    OnboardingRepository Function(OnboardingRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OnboardingRepositoryProvider._internal(
        (ref) => create(ref as OnboardingRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        networkStatus: networkStatus,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<OnboardingRepository> createElement() {
    return _OnboardingRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OnboardingRepositoryProvider &&
        other.networkStatus == networkStatus;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, networkStatus.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OnboardingRepositoryRef on AutoDisposeProviderRef<OnboardingRepository> {
  /// The parameter `networkStatus` of this provider.
  NetworkStatus get networkStatus;
}

class _OnboardingRepositoryProviderElement
    extends AutoDisposeProviderElement<OnboardingRepository>
    with OnboardingRepositoryRef {
  _OnboardingRepositoryProviderElement(super.provider);

  @override
  NetworkStatus get networkStatus =>
      (origin as OnboardingRepositoryProvider).networkStatus;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
