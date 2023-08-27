// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchHash() => r'4ed9e37a96e237e951f16add7adc42a1ee16cda8';

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

typedef SearchRef = AutoDisposeFutureProviderRef<List<Place>>;

/// A [FutureProvider] that return a new [List<Place>] depend on [SearchQueries].
///
/// Copied from [search].
@ProviderFor(search)
const searchProvider = SearchFamily();

/// A [FutureProvider] that return a new [List<Place>] depend on [SearchQueries].
///
/// Copied from [search].
class SearchFamily extends Family<AsyncValue<List<Place>>> {
  /// A [FutureProvider] that return a new [List<Place>] depend on [SearchQueries].
  ///
  /// Copied from [search].
  const SearchFamily();

  /// A [FutureProvider] that return a new [List<Place>] depend on [SearchQueries].
  ///
  /// Copied from [search].
  SearchProvider call(
    SearchQueries queries,
  ) {
    return SearchProvider(
      queries,
    );
  }

  @override
  SearchProvider getProviderOverride(
    covariant SearchProvider provider,
  ) {
    return call(
      provider.queries,
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
  String? get name => r'searchProvider';
}

/// A [FutureProvider] that return a new [List<Place>] depend on [SearchQueries].
///
/// Copied from [search].
class SearchProvider extends AutoDisposeFutureProvider<List<Place>> {
  /// A [FutureProvider] that return a new [List<Place>] depend on [SearchQueries].
  ///
  /// Copied from [search].
  SearchProvider(
    this.queries,
  ) : super.internal(
          (ref) => search(
            ref,
            queries,
          ),
          from: searchProvider,
          name: r'searchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchHash,
          dependencies: SearchFamily._dependencies,
          allTransitiveDependencies: SearchFamily._allTransitiveDependencies,
        );

  final SearchQueries queries;

  @override
  bool operator ==(Object other) {
    return other is SearchProvider && other.queries == queries;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, queries.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
