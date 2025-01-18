// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$familyRepositoryHash() => r'7dc086e9cf0d2e920ed22615a0ea4118c1b960f7';

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

/// See also [familyRepository].
@ProviderFor(familyRepository)
const familyRepositoryProvider = FamilyRepositoryFamily();

/// See also [familyRepository].
class FamilyRepositoryFamily extends Family<FamilyRepository> {
  /// See also [familyRepository].
  const FamilyRepositoryFamily();

  /// See also [familyRepository].
  FamilyRepositoryProvider call(
    NetworkStatus networkStatus,
  ) {
    return FamilyRepositoryProvider(
      networkStatus,
    );
  }

  @override
  FamilyRepositoryProvider getProviderOverride(
    covariant FamilyRepositoryProvider provider,
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
  String? get name => r'familyRepositoryProvider';
}

/// See also [familyRepository].
class FamilyRepositoryProvider extends AutoDisposeProvider<FamilyRepository> {
  /// See also [familyRepository].
  FamilyRepositoryProvider(
    NetworkStatus networkStatus,
  ) : this._internal(
          (ref) => familyRepository(
            ref as FamilyRepositoryRef,
            networkStatus,
          ),
          from: familyRepositoryProvider,
          name: r'familyRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$familyRepositoryHash,
          dependencies: FamilyRepositoryFamily._dependencies,
          allTransitiveDependencies:
              FamilyRepositoryFamily._allTransitiveDependencies,
          networkStatus: networkStatus,
        );

  FamilyRepositoryProvider._internal(
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
    FamilyRepository Function(FamilyRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FamilyRepositoryProvider._internal(
        (ref) => create(ref as FamilyRepositoryRef),
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
  AutoDisposeProviderElement<FamilyRepository> createElement() {
    return _FamilyRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FamilyRepositoryProvider &&
        other.networkStatus == networkStatus;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, networkStatus.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FamilyRepositoryRef on AutoDisposeProviderRef<FamilyRepository> {
  /// The parameter `networkStatus` of this provider.
  NetworkStatus get networkStatus;
}

class _FamilyRepositoryProviderElement
    extends AutoDisposeProviderElement<FamilyRepository>
    with FamilyRepositoryRef {
  _FamilyRepositoryProviderElement(super.provider);

  @override
  NetworkStatus get networkStatus =>
      (origin as FamilyRepositoryProvider).networkStatus;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
