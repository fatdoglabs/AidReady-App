// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nextPageHash() => r'a1c96bcbcfb2a1cf637ecfc5c3334e3217416bf8';

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

abstract class _$NextPage extends BuildlessAutoDisposeNotifier<int> {
  late final int startPage;

  int build(
    int startPage,
  );
}

/// See also [NextPage].
@ProviderFor(NextPage)
const nextPageProvider = NextPageFamily();

/// See also [NextPage].
class NextPageFamily extends Family<int> {
  /// See also [NextPage].
  const NextPageFamily();

  /// See also [NextPage].
  NextPageProvider call(
    int startPage,
  ) {
    return NextPageProvider(
      startPage,
    );
  }

  @override
  NextPageProvider getProviderOverride(
    covariant NextPageProvider provider,
  ) {
    return call(
      provider.startPage,
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
  String? get name => r'nextPageProvider';
}

/// See also [NextPage].
class NextPageProvider extends AutoDisposeNotifierProviderImpl<NextPage, int> {
  /// See also [NextPage].
  NextPageProvider(
    int startPage,
  ) : this._internal(
          () => NextPage()..startPage = startPage,
          from: nextPageProvider,
          name: r'nextPageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$nextPageHash,
          dependencies: NextPageFamily._dependencies,
          allTransitiveDependencies: NextPageFamily._allTransitiveDependencies,
          startPage: startPage,
        );

  NextPageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.startPage,
  }) : super.internal();

  final int startPage;

  @override
  int runNotifierBuild(
    covariant NextPage notifier,
  ) {
    return notifier.build(
      startPage,
    );
  }

  @override
  Override overrideWith(NextPage Function() create) {
    return ProviderOverride(
      origin: this,
      override: NextPageProvider._internal(
        () => create()..startPage = startPage,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        startPage: startPage,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<NextPage, int> createElement() {
    return _NextPageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NextPageProvider && other.startPage == startPage;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, startPage.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NextPageRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `startPage` of this provider.
  int get startPage;
}

class _NextPageProviderElement
    extends AutoDisposeNotifierProviderElement<NextPage, int> with NextPageRef {
  _NextPageProviderElement(super.provider);

  @override
  int get startPage => (origin as NextPageProvider).startPage;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
