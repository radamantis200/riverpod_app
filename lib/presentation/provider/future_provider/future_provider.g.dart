// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonNameHash() => r'a925935f710bf47ca70d31dd08225d4cd1a5ee84';

/// See also [pokemonName].
@ProviderFor(pokemonName)
final pokemonNameProvider = FutureProvider<String>.internal(
  pokemonName,
  name: r'pokemonNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PokemonNameRef = FutureProviderRef<String>;
String _$pokemonNameFamilyHash() => r'fb202406b0a2f685ce0489edc942a9b63eb5c17f';

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

typedef PokemonNameFamilyRef = FutureProviderRef<String>;

/// See also [pokemonNameFamily].
@ProviderFor(pokemonNameFamily)
const pokemonNameFamilyProvider = PokemonNameFamilyFamily();

/// See also [pokemonNameFamily].
class PokemonNameFamilyFamily extends Family<AsyncValue<String>> {
  /// See also [pokemonNameFamily].
  const PokemonNameFamilyFamily();

  /// See also [pokemonNameFamily].
  PokemonNameFamilyProvider call(
    int pokemonId,
  ) {
    return PokemonNameFamilyProvider(
      pokemonId,
    );
  }

  @override
  PokemonNameFamilyProvider getProviderOverride(
    covariant PokemonNameFamilyProvider provider,
  ) {
    return call(
      provider.pokemonId,
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
  String? get name => r'pokemonNameFamilyProvider';
}

/// See also [pokemonNameFamily].
class PokemonNameFamilyProvider extends FutureProvider<String> {
  /// See also [pokemonNameFamily].
  PokemonNameFamilyProvider(
    this.pokemonId,
  ) : super.internal(
          (ref) => pokemonNameFamily(
            ref,
            pokemonId,
          ),
          from: pokemonNameFamilyProvider,
          name: r'pokemonNameFamilyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonNameFamilyHash,
          dependencies: PokemonNameFamilyFamily._dependencies,
          allTransitiveDependencies:
              PokemonNameFamilyFamily._allTransitiveDependencies,
        );

  final int pokemonId;

  @override
  bool operator ==(Object other) {
    return other is PokemonNameFamilyProvider && other.pokemonId == pokemonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokemonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$pokemonIdHash() => r'82ee8a83c84f6e6f4fbedf30282c849b4249c96f';

/// See also [PokemonId].
@ProviderFor(PokemonId)
final pokemonIdProvider = NotifierProvider<PokemonId, int>.internal(
  PokemonId.new,
  name: r'pokemonIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PokemonId = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
