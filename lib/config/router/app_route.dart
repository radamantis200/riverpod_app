import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod_app/presentation/screens/screens.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_route.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/provider',
      builder: (context, state) => const ProviderScreen(),
    ),
    GoRoute(
      path: '/provider-router',
      builder: (context, state) => const RouterScreen(),
    ),
    GoRoute(
      path: '/state-provider',
      builder: (context, state) => const StateProviderScreen(),
    ),
    GoRoute(
      path: '/future-provider',
      builder: (context, state) => const FutureProviderScreen(),
    ),
    GoRoute(
      path: '/family-provider',
      builder: (context, state) => const FamilyFutureScreen(),
    ),
  ]);
}


// final appRouter = GoRouter(routes: [
//   GoRoute(
//     path: '/',
//     builder: (context, state) => const HomeScreen(),
//   ),
//   GoRoute(
//     path: '/provider',
//     builder: (context, state) => const ProviderScreen(),
//   ),
// ]);
