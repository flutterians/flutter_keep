import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';

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
