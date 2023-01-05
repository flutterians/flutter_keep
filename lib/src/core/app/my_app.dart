import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/src/core/core.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (BuildContext context) => locator<ThemeCubit>(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        bloc: locator<ThemeCubit>(),
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Flutter Keep App',
            debugShowCheckedModeBanner: false,
            themeMode: state.themeType.getThemeMode,
            theme: state.themeData,
            darkTheme: state.themeData,
            routeInformationParser:
                locator<AppRouter>().router.routeInformationParser,
            routeInformationProvider:
                locator<AppRouter>().router.routeInformationProvider,
            routerDelegate: locator<AppRouter>().router.routerDelegate,
          );
        },
      ),
    );
  }
}
