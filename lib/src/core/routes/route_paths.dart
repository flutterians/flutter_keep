import 'package:flutter_keep/src/core/core.dart';

/// [RoutePaths] list of all routes
class RoutePaths {
  static final AppRouteModel splashRoute =
      AppRouteModel(routeName: 'splashPage', path: '/splash');
  static final AppRouteModel walkThroughRoute =
      AppRouteModel(routeName: 'walkThroughPage', path: '/walkThrough');
  static final AppRouteModel homeRoute =
      AppRouteModel(routeName: 'homePage', path: '/home');
  static final AppRouteModel addNoteRoute =
      AppRouteModel(routeName: 'addNote', path: '/addNote');
}
