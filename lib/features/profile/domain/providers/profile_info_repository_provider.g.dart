// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileInfoRepositoryHash() =>
    r'd4f1a8f148f6d903819b45573f33f496a511619c';

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

/// See also [profileInfoRepository].
@ProviderFor(profileInfoRepository)
const profileInfoRepositoryProvider = ProfileInfoRepositoryFamily();

/// See also [profileInfoRepository].
class ProfileInfoRepositoryFamily extends Family<ProfileInfoRepository> {
  /// See also [profileInfoRepository].
  const ProfileInfoRepositoryFamily();

  /// See also [profileInfoRepository].
  ProfileInfoRepositoryProvider call(
    NetworkStatus networkStatus,
  ) {
    return ProfileInfoRepositoryProvider(
      networkStatus,
    );
  }

  @override
  ProfileInfoRepositoryProvider getProviderOverride(
    covariant ProfileInfoRepositoryProvider provider,
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
  String? get name => r'profileInfoRepositoryProvider';
}

/// See also [profileInfoRepository].
class ProfileInfoRepositoryProvider
    extends AutoDisposeProvider<ProfileInfoRepository> {
  /// See also [profileInfoRepository].
  ProfileInfoRepositoryProvider(
    NetworkStatus networkStatus,
  ) : this._internal(
          (ref) => profileInfoRepository(
            ref as ProfileInfoRepositoryRef,
            networkStatus,
          ),
          from: profileInfoRepositoryProvider,
          name: r'profileInfoRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileInfoRepositoryHash,
          dependencies: ProfileInfoRepositoryFamily._dependencies,
          allTransitiveDependencies:
              ProfileInfoRepositoryFamily._allTransitiveDependencies,
          networkStatus: networkStatus,
        );

  ProfileInfoRepositoryProvider._internal(
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
    ProfileInfoRepository Function(ProfileInfoRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProfileInfoRepositoryProvider._internal(
        (ref) => create(ref as ProfileInfoRepositoryRef),
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
  AutoDisposeProviderElement<ProfileInfoRepository> createElement() {
    return _ProfileInfoRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileInfoRepositoryProvider &&
        other.networkStatus == networkStatus;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, networkStatus.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProfileInfoRepositoryRef
    on AutoDisposeProviderRef<ProfileInfoRepository> {
  /// The parameter `networkStatus` of this provider.
  NetworkStatus get networkStatus;
}

class _ProfileInfoRepositoryProviderElement
    extends AutoDisposeProviderElement<ProfileInfoRepository>
    with ProfileInfoRepositoryRef {
  _ProfileInfoRepositoryProviderElement(super.provider);

  @override
  NetworkStatus get networkStatus =>
      (origin as ProfileInfoRepositoryProvider).networkStatus;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
