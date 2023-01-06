import 'package:flutter/widgets.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator
    ..registerLazySingleton<ThemeCubit>(
      ThemeCubit.new,
    )
    ..registerLazySingleton<GlobalKey<NavigatorState>>(
      GlobalKey<NavigatorState>.new,
    )
    ..registerLazySingleton<AppRouter>(
      AppRouter.new,
    )
    ..registerLazySingleton<NotesRepository>(
      NotesRepositoryImpl.new,
    )
    ..registerLazySingleton<NotesCubit>(
      () => NotesCubit(notesRepository: locator()),
    );
}
