import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/presentation/provider/provider.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 1;
  @override
  Widget build(BuildContext context) {
    final pokemonAsync = ref.watch(pokemonNameFamilyProvider(pokemonId));
    return Scaffold(
      appBar: AppBar(
        title: Text('pokemon Id $pokemonId'),
      ),
      body: Center(
          child: pokemonAsync.when(
              data: (data) => Text(data),
              error: (error, stackTrace) => Text('$error'),
              loading: () => const CircularProgressIndicator(
                    strokeWidth: 2,
                  ))),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          heroTag: 1,
          onPressed: () {
            pokemonId++;
            setState(() {});
          },
          child: const Icon(Icons.plus_one),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          heroTag: 2,
          onPressed: () {
            if (pokemonId <= 1) return;
            pokemonId--;
            setState(() {});
          },
          child: const Icon(Icons.plus_one),
        )
      ]),
    );
  }
}
