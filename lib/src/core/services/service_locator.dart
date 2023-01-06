import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator
    ..registerLazySingleton<LocalDataSource>(
      LocalDataSourceImpl.new,
    )
    ..registerLazySingleton<ThemeCubit>(
      ThemeCubit.new,
    )
    ..registerLazySingleton<GlobalKey<NavigatorState>>(
      GlobalKey<NavigatorState>.new,
    )
    ..registerLazySingleton<GlobalKey<ScaffoldState>>(
      GlobalKey<ScaffoldState>.new,
    )
    ..registerLazySingleton<AppRouter>(
      AppRouter.new,
    )
    ..registerLazySingleton<NotesRepository>(
      NotesRepositoryImpl.new,
    )
    ..registerLazySingleton<NotesCubit>(
      () => NotesCubit(
        notesRepository: locator(),
      ),
    );
}
