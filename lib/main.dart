import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/src/core/app/my_app.dart';
import 'package:flutter_keep/src/core/core.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      /* Init bloc observer */
      Bloc.observer = MyBlocObserver();

      /* Initialize dependency injection */
      await setupLocator();

      runApp(const MyApp());
    },
    // ignore: only_throw_errors
    (Object e, StackTrace stackTrace) => throw e,
  );
}
