import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Auth/auth.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator
    ..registerLazySingleton<GlobalKey<NavigatorState>>(
      GlobalKey<NavigatorState>.new,
    )
    ..registerLazySingleton<GlobalKey<ScaffoldState>>(
      GlobalKey<ScaffoldState>.new,
    )
    ..registerLazySingleton<AppRouter>(
      AppRouter.new,
    )
    ..registerLazySingleton<LocalDataSource>(
      LocalDataSourceImpl.new,
    )
    ..registerLazySingleton<ThemeCubit>(
      ThemeCubit.new,
    )
    ..registerLazySingleton<FirebaseAuth>(
      () => FirebaseAuth.instance,
    )
    ..registerLazySingleton<NotesRepository>(
      () => NotesRepositoryImpl(
        localDataSource: locator(),
      ),
    )
    ..registerLazySingleton<NotesCubit>(
      () => NotesCubit(
        notesRepository: locator(),
      ),
    )
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        firebaseAuth: locator(),
        localDataSource: locator(),
      ),
    )
    ..registerLazySingleton<AuthCubit>(
      () => AuthCubit(
        authRepository: locator(),
      ),
    );
}
