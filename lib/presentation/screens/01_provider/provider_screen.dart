import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/presentation/provider/provider.dart';

// class ProviderScreen extends ConsumerWidget {
//   const ProviderScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final value = ref.watch(simpleNameProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Provider'),
//       ),
//       body: Center(
//         child: Text(value),
//       ),
//     );
//   }
// }

class ProviderScreen extends ConsumerStatefulWidget {
  const ProviderScreen({super.key});

  @override
  ProviderScreenState createState() => ProviderScreenState();
}

class ProviderScreenState extends ConsumerState<ProviderScreen> {
  @override
  Widget build(BuildContext context) {
    final value = ref.watch(simpleNameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Text(value),
      ),
    );
  }
}
