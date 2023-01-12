import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/firebase_options.dart';
import 'package:flutter_keep/src/core/app/my_app.dart';
import 'package:flutter_keep/src/core/core.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      /* Init firebase services */
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      /* Init bloc observer */
      Bloc.observer = MyBlocObserver();

      /* Init Local datasource */
      await LocalStorageSetup.initHive;

      /* Initialize dependency injection */
      await setupLocator();

      runApp(const MyApp());
    },
    // ignore: only_throw_errors
    (Object e, StackTrace stackTrace) => throw e,
  );
}
