import 'package:go_router/go_router.dart';
import 'package:prospect_park_dot_chat/auth/auth.dart';
import 'package:prospect_park_dot_chat/memory/memory.dart';
import 'package:prospect_park_dot_chat/onboarding/onboarding.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routes.g.dart';

@riverpod
GoRouter route(RouteRef ref) {
  return GoRouter(initialLocation: '/', routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, state) => const MemoryPage(),
        routes: [
          GoRoute(
            path: 'login',
            builder: (context, state) => const LoginPage(),
          ),
          GoRoute(
            path: 'verification',
            builder: (context, state) {
              final params = state.extra as VerificationPageParams?;

              if (params == null) {
                throw 'Missing `VerificationPageParams` object';
              }

              return VerificationPage(
                params: params,
              );
            },
          ),
        ]),
  ]);
}
