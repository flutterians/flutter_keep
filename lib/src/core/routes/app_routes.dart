import 'package:flutter_keep/src/core/core.dart';

/// [AppRoutes] list of all routes
class AppRoutes {
  static final AppRouteModel splashRoute =
      AppRouteModel(routeName: 'splashPage', path: '/splash');
  static final AppRouteModel walkThroughRoute =
      AppRouteModel(routeName: 'walkThroughPage', path: '/walkThrough');
  static final AppRouteModel bottomNavRoute =
      AppRouteModel(routeName: 'bottomNavPage', path: '/bottomNav');
  static final AppRouteModel homeRoute =
      AppRouteModel(routeName: 'homePage', path: '/home');
  static final AppRouteModel addNoteRoute =
      AppRouteModel(routeName: 'addNote', path: '/addNote');
  static final AppRouteModel settingRoute =
      AppRouteModel(routeName: 'setting', path: '/setting');
}
