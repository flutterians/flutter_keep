import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:go_router/go_router.dart';

import '../../feature/Auth/auth.dart';

class AppRouter {
  final router = GoRouter(
    initialLocation: RoutePaths.splashRoute.path,
    navigatorKey: locator<GlobalKey<NavigatorState>>(),
    routes: [
      GoRoute(
        path: RoutePaths.splashRoute.path,
        name: RoutePaths.splashRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const SplashScreen(),
        ),
        redirect: (_, __) => RoutePaths.loginRoute.path,
      ),
      GoRoute(
        path: RoutePaths.loginRoute.path,
        name: RoutePaths.loginRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
        ),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      return null;
    },
    debugLogDiagnostics: kDebugMode,
  );
}

class FadeTransitionPage extends CustomTransitionPage<void> {
  FadeTransitionPage({
    required LocalKey super.key,
    required super.child,
  }) : super(
          transitionsBuilder: (c, animation, a2, child) => FadeTransition(
            opacity: animation.drive(CurveTween(curve: Curves.easeIn)),
            child: child,
          ),
        );
}
