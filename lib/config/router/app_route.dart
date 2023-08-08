import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod_app/presentation/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/provider',
    builder: (context, state) => const ProviderScreen(),
  ),
]);
