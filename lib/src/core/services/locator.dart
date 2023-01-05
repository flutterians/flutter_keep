import 'package:flutter/widgets.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
  locator.registerLazySingleton<GlobalKey<NavigatorState>>(
      () => GlobalKey<NavigatorState>());
  locator.registerLazySingleton<AppRouter>(() => AppRouter());
}
