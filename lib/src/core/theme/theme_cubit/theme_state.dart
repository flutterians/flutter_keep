part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.syncTheme({
    required ThemeType themeType,
    required ThemeData themeData,
  }) = _SyncTheme;
}

extension ThemeStateExtension on ThemeType {
  ThemeMode get getThemeMode {
    switch (this) {
      case ThemeType.dark:
        return ThemeMode.dark;
      case ThemeType.light:
        return ThemeMode.light;
    }
  }

  bool get isDarkTheme {
    switch (this) {
      case ThemeType.dark:
        return true;
      case ThemeType.light:
        return false;
    }
  }
}
