import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/src/core/core.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return Switch.adaptive(
                value: state.themeType.isDarkTheme,
                onChanged: (isDarkModeEnabled) {
                  locator<ThemeCubit>().changeTheme(isDarkModeEnabled);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
