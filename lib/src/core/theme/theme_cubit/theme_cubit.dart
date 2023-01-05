import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(ThemeState.syncTheme(
            themeType: ThemeType.light, themeData: AppThemeData.lightTheme));

  void changeTheme(bool isDarkTheme) {
    switch (isDarkTheme) {
      case true:
        return emit(state.copyWith(
            themeData: AppThemeData.darkTheme, themeType: ThemeType.dark));

      case false:
        return emit(state.copyWith(
            themeData: AppThemeData.lightTheme, themeType: ThemeType.light));
    }
  }
}
