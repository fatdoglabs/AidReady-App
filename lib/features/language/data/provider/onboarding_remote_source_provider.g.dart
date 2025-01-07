// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_remote_source_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onboardingRemoteDataSourceHash() =>
    r'fc5f1471c3dec19d748906f204d58dada5171ede';

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

/// See also [onboardingRemoteDataSource].
@ProviderFor(onboardingRemoteDataSource)
const onboardingRemoteDataSourceProvider = OnboardingRemoteDataSourceFamily();

/// See also [onboardingRemoteDataSource].
class OnboardingRemoteDataSourceFamily
    extends Family<OnboardingRemoteDataSource> {
  /// See also [onboardingRemoteDataSource].
  const OnboardingRemoteDataSourceFamily();

  /// See also [onboardingRemoteDataSource].
  OnboardingRemoteDataSourceProvider call(
    NetworkService service,
  ) {
    return OnboardingRemoteDataSourceProvider(
      service,
    );
  }

  @override
  OnboardingRemoteDataSourceProvider getProviderOverride(
    covariant OnboardingRemoteDataSourceProvider provider,
  ) {
    return call(
      provider.service,
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
  String? get name => r'onboardingRemoteDataSourceProvider';
}

/// See also [onboardingRemoteDataSource].
class OnboardingRemoteDataSourceProvider
    extends AutoDisposeProvider<OnboardingRemoteDataSource> {
  /// See also [onboardingRemoteDataSource].
  OnboardingRemoteDataSourceProvider(
    NetworkService service,
  ) : this._internal(
          (ref) => onboardingRemoteDataSource(
            ref as OnboardingRemoteDataSourceRef,
            service,
          ),
          from: onboardingRemoteDataSourceProvider,
          name: r'onboardingRemoteDataSourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$onboardingRemoteDataSourceHash,
          dependencies: OnboardingRemoteDataSourceFamily._dependencies,
          allTransitiveDependencies:
              OnboardingRemoteDataSourceFamily._allTransitiveDependencies,
          service: service,
        );

  OnboardingRemoteDataSourceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.service,
  }) : super.internal();

  final NetworkService service;

  @override
  Override overrideWith(
    OnboardingRemoteDataSource Function(OnboardingRemoteDataSourceRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OnboardingRemoteDataSourceProvider._internal(
        (ref) => create(ref as OnboardingRemoteDataSourceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        service: service,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<OnboardingRemoteDataSource> createElement() {
    return _OnboardingRemoteDataSourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OnboardingRemoteDataSourceProvider &&
        other.service == service;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, service.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OnboardingRemoteDataSourceRef
    on AutoDisposeProviderRef<OnboardingRemoteDataSource> {
  /// The parameter `service` of this provider.
  NetworkService get service;
}

class _OnboardingRemoteDataSourceProviderElement
    extends AutoDisposeProviderElement<OnboardingRemoteDataSource>
    with OnboardingRemoteDataSourceRef {
  _OnboardingRemoteDataSourceProviderElement(super.provider);

  @override
  NetworkService get service =>
      (origin as OnboardingRemoteDataSourceProvider).service;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
