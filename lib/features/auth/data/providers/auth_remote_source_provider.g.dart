// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_remote_source_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authRemoteDataSourceHash() =>
    r'2801824d6055af82bfc0a6f16c6251b48cad6fc3';

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

/// See also [authRemoteDataSource].
@ProviderFor(authRemoteDataSource)
const authRemoteDataSourceProvider = AuthRemoteDataSourceFamily();

/// See also [authRemoteDataSource].
class AuthRemoteDataSourceFamily extends Family<AuthRemoteSource> {
  /// See also [authRemoteDataSource].
  const AuthRemoteDataSourceFamily();

  /// See also [authRemoteDataSource].
  AuthRemoteDataSourceProvider call(
    NetworkService service,
  ) {
    return AuthRemoteDataSourceProvider(
      service,
    );
  }

  @override
  AuthRemoteDataSourceProvider getProviderOverride(
    covariant AuthRemoteDataSourceProvider provider,
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
  String? get name => r'authRemoteDataSourceProvider';
}

/// See also [authRemoteDataSource].
class AuthRemoteDataSourceProvider
    extends AutoDisposeProvider<AuthRemoteSource> {
  /// See also [authRemoteDataSource].
  AuthRemoteDataSourceProvider(
    NetworkService service,
  ) : this._internal(
          (ref) => authRemoteDataSource(
            ref as AuthRemoteDataSourceRef,
            service,
          ),
          from: authRemoteDataSourceProvider,
          name: r'authRemoteDataSourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authRemoteDataSourceHash,
          dependencies: AuthRemoteDataSourceFamily._dependencies,
          allTransitiveDependencies:
              AuthRemoteDataSourceFamily._allTransitiveDependencies,
          service: service,
        );

  AuthRemoteDataSourceProvider._internal(
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
    AuthRemoteSource Function(AuthRemoteDataSourceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AuthRemoteDataSourceProvider._internal(
        (ref) => create(ref as AuthRemoteDataSourceRef),
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
  AutoDisposeProviderElement<AuthRemoteSource> createElement() {
    return _AuthRemoteDataSourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthRemoteDataSourceProvider && other.service == service;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, service.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AuthRemoteDataSourceRef on AutoDisposeProviderRef<AuthRemoteSource> {
  /// The parameter `service` of this provider.
  NetworkService get service;
}

class _AuthRemoteDataSourceProviderElement
    extends AutoDisposeProviderElement<AuthRemoteSource>
    with AuthRemoteDataSourceRef {
  _AuthRemoteDataSourceProviderElement(super.provider);

  @override
  NetworkService get service =>
      (origin as AuthRemoteDataSourceProvider).service;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
