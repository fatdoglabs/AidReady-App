// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info_remote_source_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileInfoRemoteSourceHash() =>
    r'cfcf40e16cf8cecd220871259860f3b3b5b4e4fd';

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

/// See also [profileInfoRemoteSource].
@ProviderFor(profileInfoRemoteSource)
const profileInfoRemoteSourceProvider = ProfileInfoRemoteSourceFamily();

/// See also [profileInfoRemoteSource].
class ProfileInfoRemoteSourceFamily extends Family<ProfileInfoRemoteSource> {
  /// See also [profileInfoRemoteSource].
  const ProfileInfoRemoteSourceFamily();

  /// See also [profileInfoRemoteSource].
  ProfileInfoRemoteSourceProvider call(
    NetworkService service,
  ) {
    return ProfileInfoRemoteSourceProvider(
      service,
    );
  }

  @override
  ProfileInfoRemoteSourceProvider getProviderOverride(
    covariant ProfileInfoRemoteSourceProvider provider,
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
  String? get name => r'profileInfoRemoteSourceProvider';
}

/// See also [profileInfoRemoteSource].
class ProfileInfoRemoteSourceProvider
    extends AutoDisposeProvider<ProfileInfoRemoteSource> {
  /// See also [profileInfoRemoteSource].
  ProfileInfoRemoteSourceProvider(
    NetworkService service,
  ) : this._internal(
          (ref) => profileInfoRemoteSource(
            ref as ProfileInfoRemoteSourceRef,
            service,
          ),
          from: profileInfoRemoteSourceProvider,
          name: r'profileInfoRemoteSourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileInfoRemoteSourceHash,
          dependencies: ProfileInfoRemoteSourceFamily._dependencies,
          allTransitiveDependencies:
              ProfileInfoRemoteSourceFamily._allTransitiveDependencies,
          service: service,
        );

  ProfileInfoRemoteSourceProvider._internal(
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
    ProfileInfoRemoteSource Function(ProfileInfoRemoteSourceRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProfileInfoRemoteSourceProvider._internal(
        (ref) => create(ref as ProfileInfoRemoteSourceRef),
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
  AutoDisposeProviderElement<ProfileInfoRemoteSource> createElement() {
    return _ProfileInfoRemoteSourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileInfoRemoteSourceProvider && other.service == service;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, service.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProfileInfoRemoteSourceRef
    on AutoDisposeProviderRef<ProfileInfoRemoteSource> {
  /// The parameter `service` of this provider.
  NetworkService get service;
}

class _ProfileInfoRemoteSourceProviderElement
    extends AutoDisposeProviderElement<ProfileInfoRemoteSource>
    with ProfileInfoRemoteSourceRef {
  _ProfileInfoRemoteSourceProviderElement(super.provider);

  @override
  NetworkService get service =>
      (origin as ProfileInfoRemoteSourceProvider).service;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
