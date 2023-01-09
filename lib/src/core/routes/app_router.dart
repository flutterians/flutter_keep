import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Auth/auth.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';
import 'package:go_router/go_router.dart';

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
      ),
      GoRoute(
        path: RoutePaths.walkThroughRoute.path,
        name: RoutePaths.walkThroughRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const WalkThroughScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.loginRoute.path,
        name: RoutePaths.loginRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.homeRoute.path,
        name: RoutePaths.homeRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const HomeScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.addNoteRoute.path,
        name: RoutePaths.addNoteRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const AddNoteScreen(),
        ),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) async {
      if (state.subloc == RoutePaths.splashRoute.path) {
        return RoutePaths.walkThroughRoute.path;
      }
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
