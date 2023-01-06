import 'package:flutter_keep/src/core/core.dart';

/// [RoutePaths] list of all routes
class RoutePaths {
  static final AppRouteModel splashRoute =
      AppRouteModel(routeName: 'splashPage', path: '/splash');
  static final AppRouteModel loginRoute =
      AppRouteModel(routeName: 'loginPage', path: '/login');
  static final AppRouteModel signupRoute =
      AppRouteModel(routeName: 'signupPage', path: '/signup');
  static final AppRouteModel homeRoute =
      AppRouteModel(routeName: 'homePage', path: '/home');
}
