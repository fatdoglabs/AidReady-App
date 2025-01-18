// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_remote_source_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$familyRemoteSourceHash() =>
    r'5948b9b961770cb81f0b71ab3d6c9a47dfadfea3';

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

/// See also [familyRemoteSource].
@ProviderFor(familyRemoteSource)
const familyRemoteSourceProvider = FamilyRemoteSourceFamily();

/// See also [familyRemoteSource].
class FamilyRemoteSourceFamily extends Family<FamilyRemoteSource> {
  /// See also [familyRemoteSource].
  const FamilyRemoteSourceFamily();

  /// See also [familyRemoteSource].
  FamilyRemoteSourceProvider call(
    NetworkService service,
  ) {
    return FamilyRemoteSourceProvider(
      service,
    );
  }

  @override
  FamilyRemoteSourceProvider getProviderOverride(
    covariant FamilyRemoteSourceProvider provider,
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
  String? get name => r'familyRemoteSourceProvider';
}

/// See also [familyRemoteSource].
class FamilyRemoteSourceProvider
    extends AutoDisposeProvider<FamilyRemoteSource> {
  /// See also [familyRemoteSource].
  FamilyRemoteSourceProvider(
    NetworkService service,
  ) : this._internal(
          (ref) => familyRemoteSource(
            ref as FamilyRemoteSourceRef,
            service,
          ),
          from: familyRemoteSourceProvider,
          name: r'familyRemoteSourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$familyRemoteSourceHash,
          dependencies: FamilyRemoteSourceFamily._dependencies,
          allTransitiveDependencies:
              FamilyRemoteSourceFamily._allTransitiveDependencies,
          service: service,
        );

  FamilyRemoteSourceProvider._internal(
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
    FamilyRemoteSource Function(FamilyRemoteSourceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FamilyRemoteSourceProvider._internal(
        (ref) => create(ref as FamilyRemoteSourceRef),
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
  AutoDisposeProviderElement<FamilyRemoteSource> createElement() {
    return _FamilyRemoteSourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FamilyRemoteSourceProvider && other.service == service;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, service.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FamilyRemoteSourceRef on AutoDisposeProviderRef<FamilyRemoteSource> {
  /// The parameter `service` of this provider.
  NetworkService get service;
}

class _FamilyRemoteSourceProviderElement
    extends AutoDisposeProviderElement<FamilyRemoteSource>
    with FamilyRemoteSourceRef {
  _FamilyRemoteSourceProviderElement(super.provider);

  @override
  NetworkService get service => (origin as FamilyRemoteSourceProvider).service;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
