import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Auth/auth.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigator =
      GlobalKey(debugLabel: 'root');
  static final GlobalKey<NavigatorState> _shellNavigator =
      GlobalKey(debugLabel: 'shell');
  final router = GoRouter(
    initialLocation: AppRoutes.splashRoute.path,
    navigatorKey: _rootNavigator,
    routes: [
      GoRoute(
        path: AppRoutes.splashRoute.path,
        name: AppRoutes.splashRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const SplashScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.walkThroughRoute.path,
        name: AppRoutes.walkThroughRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const WalkThroughScreen(),
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigator,
        builder: (context, state, child) =>
            BottomNavScreen(key: state.pageKey, child: child),
        routes: [
          GoRoute(
            path: AppRoutes.homeRoute.path,
            name: AppRoutes.homeRoute.routeName,
            pageBuilder: (context, state) => NoTransitionPage(
              // key: state.pageKey,
              child: HomeScreen(key: state.pageKey),
            ),
          ),
          GoRoute(
            path: AppRoutes.addNoteRoute.path,
            name: AppRoutes.addNoteRoute.routeName,
            pageBuilder: (context, state) => NoTransitionPage(
              // key: state.pageKey,
              child: AddNoteScreen(
                key: state.pageKey,
              ),
            ),
          ),
          GoRoute(
            path: AppRoutes.settingRoute.path,
            name: AppRoutes.settingRoute.routeName,
            pageBuilder: (context, state) => NoTransitionPage(
              // key: state.pageKey,
              child: SettingScreen(
                key: state.pageKey,
              ),
            ),
          ),
        ],
      ),
    ],
    refreshListenable:
        GoRouterRefreshStream(locator<FirebaseAuth>().authStateChanges()),
    redirect: (BuildContext context, GoRouterState state) async {
      // final user = locator<FirebaseAuth>().currentUser;
      // if (state.subloc == AppRoutes.splashRoute.path) {
      //   if (user != null) {
      return AppRoutes.homeRoute.path;
      // }
      // return AppRoutes.walkThroughRoute.path;
      // },
      // return null;
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

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
