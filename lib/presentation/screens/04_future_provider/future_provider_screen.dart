import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/presentation/provider/provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemon = ref.watch(pokemonNameProvider);
    final pokemonId = ref.watch(pokemonIdProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Provider $pokemonId'),
      ),
      body: Center(
        child: pokemon.when(
          data: (data) => Text(data),
          error: (error, stackTrace) => Text('$error'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          heroTag: 1,
          onPressed: () {
            ref.read(pokemonIdProvider.notifier).nextPokemon();
          },
          child: const Icon(Icons.plus_one),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          heroTag: 2,
          onPressed: () {
            ref.read(pokemonIdProvider.notifier).previusPokemon();
          },
          child: const Icon(Icons.plus_one),
        )
      ]),
    );
  }
}
