import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/src/core/core.dart';

class ThemeCubit extends Cubit<ThemeModel> {
  ThemeCubit()
      : super(
          ThemeModel(
            themeType: ThemeType.light,
            themeData: AppThemeData.lightTheme,
          ),
        );

  void getTheme() {}
  Future<void> changeTheme({required bool isDarkTheme}) async {
    switch (isDarkTheme) {
      case true:
        return emit(
          state.copyWith(
            themeData: AppThemeData.darkTheme,
            themeType: ThemeType.dark,
          ),
        );

      case false:
        return emit(
          state.copyWith(
            themeData: AppThemeData.lightTheme,
            themeType: ThemeType.light,
          ),
        );
    }
  }
}
