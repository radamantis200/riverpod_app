import 'package:flutter_riverpod_app/config/helpers/pokemon_information.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'future_provider.g.dart';

@Riverpod(keepAlive: true)
Future<String> pokemonName(PokemonNameRef ref) async {
  final pokemonId = ref.watch(pokemonIdProvider);
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);
  return pokemonName;
}

@Riverpod(keepAlive: true)
class PokemonId extends _$PokemonId {
  @override
  int build() => 1;

  void nextPokemon() {
    state++;
  }

  void previusPokemon() {
    if (state > 1) {
      state--;
    }
  }
}

@Riverpod(keepAlive: true)
Future<String> pokemonNameFamily(
    PokemonNameFamilyRef ref, int pokemonId) async {
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);
  return pokemonName;
}
